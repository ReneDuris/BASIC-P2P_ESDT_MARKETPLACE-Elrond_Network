#![no_std]
elrond_wasm::imports!();
elrond_wasm::derive_imports!();
const PERCENTAGE: u32 = 100;
#[derive(TypeAbi, TopEncode, TopDecode)]
pub struct Offer<M: ManagedTypeApi> {
    pub offer_id: ManagedBuffer<M>,
    pub offer_creator: ManagedAddress<M>,
    pub offer_token_id: EgldOrEsdtTokenIdentifier<M>,
    pub offer_amount: BigUint<M>,
    pub accept_token_id : EgldOrEsdtTokenIdentifier<M>,
    pub accept_amount : BigUint<M>,
    pub creation_timestamp: u64,
}

#[elrond_wasm::contract]

pub trait Marketplace{
    #[init]
    fn init(&self,royalities:u32, royalities_address: ManagedAddress){
        self.royalities().set(royalities);
        self.royalities_address().set(royalities_address);
    }

#[only_owner]
#[endpoint(whitelistToken)]
    fn whitelist_token(&self,token: EgldOrEsdtTokenIdentifier){
        self.esdt_whitelist().insert(token);
    }
#[only_owner]
#[endpoint(removeWhitelistToken)]
    fn remove_whitelist_token(&self,token: EgldOrEsdtTokenIdentifier){
        require!(self.esdt_whitelist().contains(&token) == true, "Not whitelisted token.");

        self.esdt_whitelist().swap_remove(&token);
          
        }

#[only_owner]
#[endpoint(enableOffers)]
    fn enable_offers(&self){
        require!(self.offers_online().get() == false, "Already enabled.");
        self.offers_online().set(true);
}
#[only_owner]
#[endpoint(disableOffers)]
    fn disable_offers(&self){
        require!(self.offers_online().get() == true, "Already disabled.");
        self.offers_online().set(false);

}

#[only_owner]
#[endpoint(changeRoyalities)]
    fn change_royalities(&self,royalities: u32){

        self.royalities().set(royalities);

}
//CREATE OFFER
    #[payable("*")]
    #[endpoint(createOffer)]
    fn create_offer(&self, accept_token_id: EgldOrEsdtTokenIdentifier , accept_amount: BigUint )-> SCResult<ManagedBuffer>{
        require!(self.offers_online().get() == true, "Disabled by owner.");
        require!(accept_amount > 0 ,"Amount cannot be bellow zero");
        let (payment_token, payment_amount) = self.call_value().egld_or_single_fungible_esdt();
        require!(self.esdt_whitelist().contains(&accept_token_id) == true, "Not whitelisted token.");
        require!(self.esdt_whitelist().contains(&payment_token) == true, "Not whitelisted token.");

        let caller = self.blockchain().get_caller();
        let current_timestamp = self.blockchain().get_block_timestamp();
       
       
        let id = self.create_id();
        
        let offer = Offer{
            offer_id : id.clone(),
            offer_creator: caller.clone(),
            offer_token_id : payment_token,
            offer_amount: payment_amount,
            accept_token_id ,
            accept_amount ,
            creation_timestamp:current_timestamp,
        };

        self.offers(&id).set(&offer);
        self.offers_user(&id,&caller).set(&offer);
        Ok(id)
    }

//CANCEL OFFER
   #[endpoint(cancelOffer)]
    fn cancel_offer(&self, offer_id:ManagedBuffer){
    require!(self.offers_online().get() == true, "Disabled by owner.");
    require!(self.offers(&offer_id).is_empty() == false, "This offer do not exist.");
    let caller = self.blockchain().get_caller();
    let offer = self.offers(&offer_id).get();
    let payment_token = offer.offer_token_id;
    let payment_amount = offer.offer_amount;
    let offer_creator = offer.offer_creator;
    

    require!(offer_creator == caller, "you are not Creator of the offer");

    self.send().direct(&offer_creator, &payment_token, 0, &payment_amount);
    self.offers(&offer_id).clear();
    self.offers_user(&offer_id,&caller).clear();
    
}

//ACCEPT OFFER
#[payable("*")]
#[endpoint(acceptOffer)]
fn accept_offer(&self, offer_id: ManagedBuffer){
    require!(self.offers(&offer_id).is_empty() == false, "This offer do not exist.");
    require!(self.offers_online().get() == true, "Disabled by owner.");
    let caller = self.blockchain().get_caller();
    let offer = self.offers(&offer_id).get();
    let (payment_token, payment_amount) = self.call_value().egld_or_single_fungible_esdt();

    
    let storage_token = offer.offer_token_id;
    let storage_amount = offer.offer_amount;
    let offer_creator = offer.offer_creator;
    let accept_token = offer.accept_token_id;
    let accept_amount = offer.accept_amount;
    let creation_timestamp = offer.creation_timestamp;
 
    require!(payment_token == accept_token , "This token is not allowed for this offer.");
    require!(payment_amount <= accept_amount, "You cannnot trade more than was provided.");

    let result_amount = self.math_conversion_fill_partial(storage_amount.clone(),accept_amount.clone(),payment_amount.clone());
    let new_offer_amount = &storage_amount - &result_amount;
    let new_accept_amount = &accept_amount - &payment_amount;

    let new_offer = Offer{
        offer_id:offer_id.clone(),
        offer_creator: offer_creator.clone(),
        offer_token_id: storage_token.clone(),
        offer_amount: new_offer_amount.clone(),
        accept_token_id : accept_token.clone(),
        accept_amount : new_accept_amount.clone(),
        creation_timestamp,
    };
    
    if new_accept_amount == BigUint::zero() && new_offer_amount == BigUint::zero() {
        self.offers(&offer_id).clear();
        self.offers_user(&offer_id,&offer_creator).clear();
    }
    else{
    self.offers(&offer_id).set(&new_offer);
    self.offers_user(&offer_id,&offer_creator).set(&new_offer);
    }
    let royalities = self.royalities().get();
    let payment_amount_cut = payment_amount.clone()* BigUint::from(royalities) / BigUint::from(PERCENTAGE);
    let remain_payment_amount = payment_amount.clone() - &payment_amount_cut;
    let result_amount_cut = result_amount.clone()* BigUint::from(royalities) / BigUint::from(PERCENTAGE);
    let remain_result_amount = result_amount.clone() - &result_amount_cut;
    let royalities_address = self.royalities_address().get();
    self.send().direct(&offer_creator, &accept_token, 0,&remain_payment_amount );
    self.send().direct(&caller, &storage_token, 0, &remain_result_amount);
    self.send().direct(&royalities_address, &accept_token, 0,&payment_amount_cut );
    self.send().direct(&royalities_address, &storage_token, 0, &result_amount_cut);


}
//MATHEMATIC RESULT FOR PARTIAL FILL
fn math_conversion_fill_partial(&self,storage_amount: BigUint, accept_amount:BigUint , payment_amount: BigUint) -> BigUint{
    let result = &payment_amount * &storage_amount / &accept_amount;
    return result;
}
//CREATION OF ID
fn create_id(&self)-> ManagedBuffer{
    let mut rand_source = RandomnessSource::<Self::Api>::new();
    let rand_hash = rand_source.next_bytes(32);
    return rand_hash;
}  
//STORAGE
    #[view(getRoyalitiesAddress)]
    #[storage_mapper("royalitiesAddress")]
    fn royalities_address(&self) -> SingleValueMapper<ManagedAddress>;

    #[view(getRoyalities)]
    #[storage_mapper("changeRoyalities")]
    fn royalities(&self) -> SingleValueMapper<u32>;

    #[view(getOffers)]
    #[storage_mapper("offers")]
    fn offers(&self, offer_id: &ManagedBuffer) -> SingleValueMapper<Offer<Self::Api>>;

    #[view(getOffersUser)]
    #[storage_mapper("offersUser")]
    fn offers_user(&self, offer_id: &ManagedBuffer,user: &ManagedAddress) -> SingleValueMapper<Offer<Self::Api>>;

    #[storage_mapper("offersOnline")]
    fn offers_online(&self) -> SingleValueMapper<bool>;

    #[view(getESDTwhitelist)]
    #[storage_mapper("esdtWhitelist")]
    fn esdt_whitelist(&self) -> UnorderedSetMapper<EgldOrEsdtTokenIdentifier>;
    }

   
   
