(module
  (type (;0;) (func (param i32 i32) (result i32)))
  (type (;1;) (func))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (param i32) (result i32)))
  (type (;4;) (func (param i32 i32 i32)))
  (type (;5;) (func (param i32)))
  (type (;6;) (func (result i32)))
  (type (;7;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;8;) (func (param i32 i32 i32 i32)))
  (type (;9;) (func (param i32 i64)))
  (type (;10;) (func (param i32 i32 i32) (result i32)))
  (type (;11;) (func (param i32 i32 i64 i32 i32) (result i32)))
  (type (;12;) (func (param i32) (result i64)))
  (type (;13;) (func (result i64)))
  (type (;14;) (func (param i64)))
  (type (;15;) (func (param i32 i32 i32 i32 i32)))
  (type (;16;) (func (param i64 i32)))
  (type (;17;) (func (param i32 i32) (result i64)))
  (type (;18;) (func (param i32 i64 i32 i32)))
  (import "env" "bigIntSetInt64" (func (;0;) (type 9)))
  (import "env" "bigIntAdd" (func (;1;) (type 4)))
  (import "env" "signalError" (func (;2;) (type 2)))
  (import "env" "mBufferNew" (func (;3;) (type 6)))
  (import "env" "mBufferAppend" (func (;4;) (type 0)))
  (import "env" "mBufferEq" (func (;5;) (type 0)))
  (import "env" "mBufferAppendBytes" (func (;6;) (type 10)))
  (import "env" "managedMultiTransferESDTNFTExecute" (func (;7;) (type 11)))
  (import "env" "managedTransferValueExecute" (func (;8;) (type 11)))
  (import "env" "managedCaller" (func (;9;) (type 5)))
  (import "env" "managedOwnerAddress" (func (;10;) (type 5)))
  (import "env" "managedGetMultiESDTCallValue" (func (;11;) (type 5)))
  (import "env" "mBufferGetLength" (func (;12;) (type 3)))
  (import "env" "bigIntGetCallValue" (func (;13;) (type 5)))
  (import "env" "mBufferGetArgument" (func (;14;) (type 0)))
  (import "env" "managedSignalError" (func (;15;) (type 5)))
  (import "env" "bigIntGetUnsignedArgument" (func (;16;) (type 2)))
  (import "env" "smallIntGetUnsignedArgument" (func (;17;) (type 12)))
  (import "env" "getNumArguments" (func (;18;) (type 6)))
  (import "env" "mBufferFinish" (func (;19;) (type 3)))
  (import "env" "mBufferCopyByteSlice" (func (;20;) (type 7)))
  (import "env" "mBufferSetBytes" (func (;21;) (type 10)))
  (import "env" "bigIntTDiv" (func (;22;) (type 4)))
  (import "env" "bigIntMul" (func (;23;) (type 4)))
  (import "env" "mBufferStorageLoad" (func (;24;) (type 0)))
  (import "env" "mBufferStorageStore" (func (;25;) (type 0)))
  (import "env" "mBufferToBigIntUnsigned" (func (;26;) (type 0)))
  (import "env" "mBufferFromBigIntUnsigned" (func (;27;) (type 0)))
  (import "env" "bigIntCmp" (func (;28;) (type 0)))
  (import "env" "checkNoPayment" (func (;29;) (type 1)))
  (import "env" "bigIntSign" (func (;30;) (type 3)))
  (import "env" "getBlockTimestamp" (func (;31;) (type 13)))
  (import "env" "mBufferSetRandom" (func (;32;) (type 0)))
  (import "env" "finish" (func (;33;) (type 2)))
  (import "env" "smallIntFinishUnsigned" (func (;34;) (type 14)))
  (import "env" "bigIntSub" (func (;35;) (type 4)))
  (import "env" "mBufferGetByteSlice" (func (;36;) (type 7)))
  (func (;37;) (type 3) (param i32) (result i32)
    (local i32)
    call 38
    local.tee 1
    i64.const 0
    call 0
    local.get 1
    local.get 1
    local.get 0
    call 1
    local.get 1)
  (func (;38;) (type 6) (result i32)
    (local i32)
    i32.const 1049288
    i32.const 1049288
    i32.load
    i32.const 1
    i32.sub
    local.tee 0
    i32.store
    local.get 0)
  (func (;39;) (type 15) (param i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 1
      local.get 2
      i32.le_u
      if  ;; label = @2
        local.get 2
        local.get 4
        i32.le_u
        br_if 1 (;@1;)
        call 40
        unreachable
      end
      call 40
      unreachable
    end
    local.get 0
    local.get 2
    local.get 1
    i32.sub
    i32.store offset=4
    local.get 0
    local.get 1
    local.get 3
    i32.add
    i32.store)
  (func (;40;) (type 1)
    call 138
    unreachable)
  (func (;41;) (type 3) (param i32) (result i32)
    (local i32)
    call 38
    local.tee 1
    local.get 0
    i64.extend_i32_u
    call 0
    local.get 1)
  (func (;42;) (type 3) (param i32) (result i32)
    (local i32)
    call 3
    local.tee 1
    local.get 0
    call 4
    drop
    local.get 1)
  (func (;43;) (type 0) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call 5
    i32.const 0
    i32.gt_s)
  (func (;44;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call 2
    unreachable)
  (func (;45;) (type 4) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    call 46
    local.set 4
    call 46
    local.set 5
    block  ;; label = @1
      local.get 1
      i32.const 2147483646
      i32.ne
      if  ;; label = @2
        call 46
        local.set 6
        local.get 1
        call 42
        local.set 1
        local.get 2
        call 37
        local.set 2
        local.get 3
        i64.const 0
        i64.store offset=4 align=4
        local.get 3
        local.get 1
        i32.const 8
        i32.shl
        i32.const 16711680
        i32.and
        local.get 1
        i32.const 24
        i32.shl
        i32.or
        local.get 1
        i32.const 8
        i32.shr_u
        i32.const 65280
        i32.and
        local.get 1
        i32.const 24
        i32.shr_u
        i32.or
        i32.or
        i32.store
        local.get 3
        local.get 2
        i32.const 8
        i32.shl
        i32.const 16711680
        i32.and
        local.get 2
        i32.const 24
        i32.shl
        i32.or
        local.get 2
        i32.const 8
        i32.shr_u
        i32.const 65280
        i32.and
        local.get 2
        i32.const 24
        i32.shr_u
        i32.or
        i32.or
        i32.store offset=12
        local.get 6
        local.get 3
        i32.const 16
        call 6
        drop
        local.get 0
        local.get 6
        i64.const 0
        local.get 4
        local.get 5
        call 7
        drop
        br 1 (;@1;)
      end
      local.get 0
      local.get 2
      i64.const 0
      local.get 4
      local.get 5
      call 8
      drop
    end
    local.get 3
    i32.const 16
    i32.add
    global.set 0)
  (func (;46;) (type 6) (result i32)
    (local i32)
    call 38
    local.tee 0
    i32.const 1049160
    i32.const 0
    call 21
    drop
    local.get 0)
  (func (;47;) (type 6) (result i32)
    (local i32)
    call 38
    local.tee 0
    call 9
    local.get 0)
  (func (;48;) (type 1)
    (local i32)
    call 38
    local.tee 0
    call 10
    local.get 0
    call 47
    call 43
    if  ;; label = @1
      return
    end
    i32.const 1049188
    i32.const 36
    call 2
    unreachable)
  (func (;49;) (type 5) (param i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    i32.const -21
    local.set 1
    block  ;; label = @1
      i32.const 1059304
      i32.load8_u
      local.tee 3
      if  ;; label = @2
        i32.const -21
        i32.const 2147483647
        local.get 3
        select
        local.set 1
        br 1 (;@1;)
      end
      i32.const 1059304
      i32.const 1
      i32.store8
      i32.const -21
      call 11
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                call 12
                i32.const 4
                i32.shr_u
                br_table 1 (;@5;) 2 (;@4;) 0 (;@6;)
              end
              i32.const 1048576
              i32.const 34
              call 2
              unreachable
            end
            i32.const -11
            local.set 1
            i32.const 2147483646
            local.set 3
            i32.const 1059300
            i32.load8_u
            local.tee 4
            if  ;; label = @5
              i32.const -11
              i32.const 2147483647
              local.get 4
              select
              local.set 1
              br 2 (;@3;)
            end
            i32.const 1059300
            i32.const 1
            i32.store8
            i32.const -11
            call 13
            br 1 (;@3;)
          end
          local.get 2
          i32.const 8
          i32.add
          i64.const 0
          i64.store
          local.get 2
          i64.const 0
          i64.store
          local.get 1
          i32.const 0
          local.get 2
          i32.const 16
          call 50
          br_if 2 (;@1;)
          local.get 2
          i64.load offset=4 align=4
          i64.const 0
          i64.ne
          br_if 1 (;@2;)
          local.get 2
          i32.load
          local.tee 1
          i32.const 24
          i32.shl
          local.get 1
          i32.const 8
          i32.shl
          i32.const 16711680
          i32.and
          i32.or
          local.get 1
          i32.const 8
          i32.shr_u
          i32.const 65280
          i32.and
          local.get 1
          i32.const 24
          i32.shr_u
          i32.or
          i32.or
          local.set 3
          local.get 2
          i32.load offset=12
          local.tee 1
          i32.const 24
          i32.shl
          local.get 1
          i32.const 8
          i32.shl
          i32.const 16711680
          i32.and
          i32.or
          local.get 1
          i32.const 8
          i32.shr_u
          i32.const 65280
          i32.and
          local.get 1
          i32.const 24
          i32.shr_u
          i32.or
          i32.or
          local.set 1
        end
        local.get 0
        local.get 1
        i32.store offset=4
        local.get 0
        local.get 3
        i32.store
        local.get 2
        i32.const 16
        i32.add
        global.set 0
        return
      end
      i32.const 1049160
      i32.const 28
      call 2
      unreachable
    end
    i32.const 1048690
    i32.const 29
    call 2
    unreachable)
  (func (;50;) (type 7) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 3
    local.get 2
    call 36
    i32.const 0
    i32.ne)
  (func (;51;) (type 3) (param i32) (result i32)
    local.get 0
    call 38
    local.tee 0
    call 14
    drop
    local.get 0)
  (func (;52;) (type 8) (param i32 i32 i32 i32)
    (local i32)
    i32.const 1048610
    i32.const 23
    call 53
    local.tee 4
    local.get 0
    local.get 1
    call 6
    drop
    local.get 4
    i32.const 1048633
    i32.const 3
    call 6
    drop
    local.get 4
    local.get 2
    local.get 3
    call 6
    drop
    local.get 4
    call 15
    unreachable)
  (func (;53;) (type 0) (param i32 i32) (result i32)
    (local i32)
    call 38
    local.tee 2
    local.get 0
    local.get 1
    call 21
    drop
    local.get 2)
  (func (;54;) (type 0) (param i32 i32) (result i32)
    (local i32)
    i32.const 1
    call 51
    local.tee 2
    call 12
    i32.const 32
    i32.ne
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.const 1049063
      i32.const 16
      call 52
      unreachable
    end
    local.get 2)
  (func (;55;) (type 6) (result i32)
    i32.const 0
    call 51
    call 56)
  (func (;56;) (type 3) (param i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 0
    call 12
    i32.const 4
    i32.eq
    if  ;; label = @1
      local.get 1
      i32.const 0
      i32.store offset=12
      local.get 0
      i32.const 0
      local.get 1
      i32.const 12
      i32.add
      i32.const 4
      call 50
      drop
      i32.const 2147483646
      local.get 0
      local.get 1
      i32.load offset=12
      i32.const 1145849669
      i32.eq
      select
      local.set 0
    end
    local.get 1
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func (;57;) (type 6) (result i32)
    (local i64)
    i32.const 0
    call 17
    local.tee 0
    i64.const 4294967296
    i64.ge_u
    if  ;; label = @1
      i32.const 1048995
      i32.const 10
      i32.const 1048661
      i32.const 14
      call 52
      unreachable
    end
    local.get 0
    i32.wrap_i64)
  (func (;58;) (type 5) (param i32)
    call 18
    local.get 0
    i32.eq
    if  ;; label = @1
      return
    end
    i32.const 1048636
    i32.const 25
    call 2
    unreachable)
  (func (;59;) (type 5) (param i32)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i32.const 8
    i32.add
    local.get 0
    call 60
    local.get 1
    call 61
    local.get 1
    local.get 1
    i32.load
    i32.store offset=40
    local.get 1
    local.get 1
    i32.load8_u offset=4
    i32.const 1
    i32.and
    i32.store8 offset=44
    local.get 1
    i32.load offset=16
    local.get 1
    i32.const 40
    i32.add
    local.tee 0
    call 62
    local.get 0
    local.get 1
    i32.load offset=20
    call 63
    local.get 1
    i32.load offset=24
    local.get 0
    call 64
    local.get 1
    i32.load offset=28
    local.get 0
    call 65
    local.get 1
    i32.load offset=32
    local.get 0
    call 64
    local.get 1
    i32.load offset=36
    local.get 0
    call 65
    local.get 1
    i64.load offset=8
    local.get 0
    call 66
    local.get 1
    i32.load offset=40
    local.get 1
    i32.load8_u offset=44
    call 67
    call 19
    drop
    local.get 1
    i32.const 48
    i32.add
    global.set 0)
  (func (;60;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    call 90
    local.tee 1
    call 12
    local.tee 3
    i32.store offset=16
    local.get 2
    i32.const 0
    i32.store offset=12
    local.get 2
    i32.const 0
    i32.store8 offset=8
    local.get 2
    local.get 3
    i32.store offset=4
    local.get 2
    local.get 1
    i32.store
    local.get 2
    call 68
    local.set 1
    local.get 2
    i32.const 32
    call 71
    local.set 3
    local.get 2
    call 100
    local.set 4
    local.get 2
    call 101
    local.set 5
    local.get 2
    call 100
    local.set 6
    local.get 2
    call 101
    local.set 7
    local.get 2
    i64.const 0
    i64.store offset=24
    local.get 2
    local.get 2
    i32.const 24
    i32.add
    local.tee 8
    i32.const 8
    call 69
    local.get 8
    i32.const 8
    call 70
    local.set 9
    local.get 2
    i32.load offset=16
    local.get 2
    i32.load offset=12
    i32.eq
    if  ;; label = @1
      local.get 2
      i32.load8_u offset=8
      if  ;; label = @2
        i32.const 1049292
        i32.const 0
        i32.store
        i32.const 1059296
        i32.const 0
        i32.store8
      end
      local.get 0
      local.get 7
      i32.store offset=28
      local.get 0
      local.get 6
      i32.store offset=24
      local.get 0
      local.get 5
      i32.store offset=20
      local.get 0
      local.get 4
      i32.store offset=16
      local.get 0
      local.get 3
      i32.store offset=12
      local.get 0
      local.get 1
      i32.store offset=8
      local.get 0
      local.get 9
      i64.store
      local.get 2
      i32.const 32
      i32.add
      global.set 0
      return
    end
    i32.const 1048661
    i32.const 14
    call 72
    unreachable)
  (func (;61;) (type 5) (param i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    block (result i32)  ;; label = @1
      i32.const 1059296
      i32.load8_u
      i32.eqz
      if  ;; label = @2
        i32.const 1
        local.set 2
        i32.const 1059296
        i32.const 1
        i32.store8
        i32.const 1049292
        i32.const 0
        i32.store
        local.get 1
        i32.const 8
        i32.add
        i32.const 0
        call 84
        local.get 1
        i32.load offset=8
        local.get 1
        i32.load offset=12
        i32.const 1049160
        i32.const 0
        call 85
        call 46
        br 1 (;@1;)
      end
      i32.const 1049160
      i32.const 0
      call 53
    end
    local.set 3
    local.get 0
    local.get 2
    i32.store8 offset=4
    local.get 0
    local.get 3
    i32.store
    local.get 1
    i32.const 16
    i32.add
    global.set 0)
  (func (;62;) (type 2) (param i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    call 12
    local.tee 3
    i32.const 24
    i32.shl
    local.get 3
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    i32.or
    local.get 3
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 3
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 4
    call 112
    local.get 1
    local.get 0
    call 63
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;63;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.load8_u offset=4
    local.set 3
    local.get 0
    i32.const 0
    i32.store8 offset=4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.const 1
          i32.and
          local.tee 3
          if  ;; label = @4
            local.get 1
            call 12
            local.tee 5
            i32.const 10000
            i32.const 1049292
            i32.load
            local.tee 4
            i32.sub
            i32.gt_u
            br_if 2 (;@2;)
            local.get 2
            i32.const 8
            i32.add
            local.get 4
            local.get 4
            local.get 5
            i32.add
            local.tee 4
            call 115
            local.get 1
            i32.const 0
            local.get 2
            i32.load offset=8
            local.get 2
            i32.load offset=12
            call 76
            drop
            i32.const 1049292
            local.get 4
            i32.store
            br 1 (;@3;)
          end
          local.get 0
          i32.load
          local.get 1
          call 77
        end
        local.get 0
        local.get 3
        i32.store8 offset=4
        br 1 (;@1;)
      end
      local.get 0
      call 86
      local.get 0
      i32.load
      local.get 1
      call 77
      local.get 0
      i32.load8_u offset=4
      local.get 0
      local.get 3
      i32.store8 offset=4
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      i32.const 1049292
      i32.const 0
      i32.store
      i32.const 1059296
      i32.const 0
      i32.store8
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;64;) (type 2) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      local.get 0
      i32.const 2147483646
      i32.ne
      if  ;; label = @2
        local.get 0
        local.get 1
        call 62
        br 1 (;@1;)
      end
      local.get 2
      i32.const 67108864
      i32.store offset=12
      local.get 1
      local.get 2
      i32.const 12
      i32.add
      i32.const 4
      call 112
      local.get 1
      i32.const 1048719
      i32.const 4
      call 112
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;65;) (type 2) (param i32 i32)
    (local i32)
    call 38
    local.tee 2
    local.get 0
    call 27
    drop
    local.get 2
    local.get 1
    call 62)
  (func (;66;) (type 16) (param i64 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i64.const 40
    i64.shl
    i64.const 71776119061217280
    i64.and
    local.get 0
    i64.const 56
    i64.shl
    i64.or
    local.get 0
    i64.const 24
    i64.shl
    i64.const 280375465082880
    i64.and
    local.get 0
    i64.const 8
    i64.shl
    i64.const 1095216660480
    i64.and
    i64.or
    i64.or
    local.get 0
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 0
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 0
    i64.const 40
    i64.shr_u
    i64.const 65280
    i64.and
    local.get 0
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or
    i64.store offset=8
    local.get 1
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    call 112
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;67;) (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.store8 offset=12
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    i32.const 8
    i32.add
    call 86
    local.get 2
    i32.load offset=8
    local.get 2
    i32.load8_u offset=12
    if  ;; label = @1
      i32.const 1049292
      i32.const 0
      i32.store
      i32.const 1059296
      i32.const 0
      i32.store8
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;68;) (type 3) (param i32) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i32.const 0
    i32.store offset=12
    local.get 0
    local.get 1
    i32.const 12
    i32.add
    local.tee 2
    i32.const 4
    call 69
    local.get 0
    local.get 2
    i32.const 4
    call 70
    i32.wrap_i64
    call 71
    local.get 1
    i32.const 16
    i32.add
    global.set 0)
  (func (;69;) (type 4) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 0
    i32.load offset=12
    local.set 5
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load8_u offset=8
          i32.eqz
          if  ;; label = @4
            local.get 0
            i32.load
            local.tee 6
            call 12
            local.set 4
            i32.const 1059296
            i32.load8_u
            local.get 4
            i32.const 10000
            i32.gt_u
            i32.or
            br_if 1 (;@3;)
            i32.const 1049292
            local.get 4
            i32.store
            i32.const 1059296
            i32.const 1
            i32.store8
            local.get 3
            i32.const 8
            i32.add
            local.get 4
            call 84
            local.get 6
            i32.const 0
            local.get 3
            i32.load offset=8
            local.get 3
            i32.load offset=12
            call 76
            drop
            local.get 0
            i32.const 1
            i32.store8 offset=8
          end
          local.get 2
          local.get 5
          i32.add
          local.tee 4
          i32.const 1049292
          i32.load
          i32.gt_u
          br_if 2 (;@1;)
          local.get 3
          local.get 5
          local.get 4
          call 87
          local.get 1
          local.get 2
          local.get 3
          i32.load
          local.get 3
          i32.load offset=4
          call 85
          br 1 (;@2;)
        end
        local.get 0
        i32.const 0
        i32.store8 offset=8
        local.get 6
        local.get 5
        local.get 1
        local.get 2
        call 76
        br_if 1 (;@1;)
        local.get 2
        local.get 5
        i32.add
        local.set 4
      end
      local.get 0
      local.get 4
      i32.store offset=12
      local.get 3
      i32.const 16
      i32.add
      global.set 0
      return
    end
    i32.const 1048675
    i32.const 15
    call 72
    unreachable)
  (func (;70;) (type 17) (param i32 i32) (result i64)
    (local i64)
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 1
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        i32.const 1
        i32.sub
        local.set 1
        local.get 0
        i64.load8_u
        local.get 2
        i64.const 8
        i64.shl
        i64.or
        local.set 2
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        br 0 (;@2;)
      end
      unreachable
    end
    local.get 2)
  (func (;71;) (type 0) (param i32 i32) (result i32)
    (local i32 i32)
    local.get 0
    i32.load offset=12
    local.set 2
    call 3
    local.set 3
    local.get 0
    i32.load
    local.get 2
    local.get 1
    local.get 3
    call 20
    i32.eqz
    if  ;; label = @1
      local.get 0
      local.get 1
      local.get 2
      i32.add
      i32.store offset=12
      local.get 3
      return
    end
    i32.const 1048675
    i32.const 15
    call 72
    unreachable)
  (func (;72;) (type 2) (param i32 i32)
    (local i32)
    i32.const 1049041
    i32.const 22
    call 53
    local.tee 2
    local.get 0
    local.get 1
    call 6
    drop
    local.get 2
    call 15
    unreachable)
  (func (;73;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 4
    call 6
    drop)
  (func (;74;) (type 0) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call 75
    i32.const 255
    i32.and
    i32.eqz)
  (func (;75;) (type 0) (param i32 i32) (result i32)
    i32.const -1
    local.get 0
    local.get 1
    call 28
    local.tee 0
    i32.const 0
    i32.ne
    local.get 0
    i32.const 0
    i32.lt_s
    select)
  (func (;76;) (type 7) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call 50)
  (func (;77;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call 4
    drop)
  (func (;78;) (type 0) (param i32 i32) (result i32)
    local.get 0
    local.get 0
    local.get 1
    call 22
    local.get 0)
  (func (;79;) (type 0) (param i32 i32) (result i32)
    local.get 0
    local.get 0
    local.get 1
    call 23
    local.get 0)
  (func (;80;) (type 0) (param i32 i32) (result i32)
    local.get 0
    local.get 0
    local.get 1
    call 81
    local.get 0)
  (func (;81;) (type 4) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call 35
    local.get 0
    call 30
    i32.const 0
    i32.ge_s
    if  ;; label = @1
      return
    end
    i32.const 1049224
    i32.const 48
    call 2
    unreachable)
  (func (;82;) (type 0) (param i32 i32) (result i32)
    (local i32)
    call 38
    local.tee 2
    local.get 0
    local.get 1
    call 81
    local.get 2)
  (func (;83;) (type 6) (result i32)
    (local i32)
    call 38
    local.tee 0
    i64.const 0
    call 0
    local.get 0)
  (func (;84;) (type 2) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 8
    i32.add
    i32.const 1049296
    i32.const 10000
    local.get 1
    call 113
    local.get 2
    i32.load offset=12
    local.set 1
    local.get 0
    local.get 2
    i32.load offset=8
    i32.store
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;85;) (type 8) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    local.get 1
    local.get 3
    i32.eq
    if  ;; label = @1
      local.get 1
      local.tee 3
      i32.const 15
      i32.gt_u
      if  ;; label = @2
        local.get 0
        i32.const 0
        local.get 0
        i32.sub
        i32.const 3
        i32.and
        local.tee 5
        i32.add
        local.set 4
        local.get 5
        if  ;; label = @3
          local.get 2
          local.set 1
          loop  ;; label = @4
            local.get 0
            local.get 1
            i32.load8_u
            i32.store8
            local.get 1
            i32.const 1
            i32.add
            local.set 1
            local.get 0
            i32.const 1
            i32.add
            local.tee 0
            local.get 4
            i32.lt_u
            br_if 0 (;@4;)
          end
        end
        local.get 4
        local.get 3
        local.get 5
        i32.sub
        local.tee 3
        i32.const -4
        i32.and
        local.tee 6
        i32.add
        local.set 0
        block  ;; label = @3
          local.get 2
          local.get 5
          i32.add
          local.tee 5
          i32.const 3
          i32.and
          local.tee 1
          if  ;; label = @4
            local.get 6
            i32.const 0
            i32.le_s
            br_if 1 (;@3;)
            local.get 5
            i32.const -4
            i32.and
            local.tee 7
            i32.const 4
            i32.add
            local.set 2
            i32.const 0
            local.get 1
            i32.const 3
            i32.shl
            local.tee 8
            i32.sub
            i32.const 24
            i32.and
            local.set 9
            local.get 7
            i32.load
            local.set 1
            loop  ;; label = @5
              local.get 4
              local.get 1
              local.get 8
              i32.shr_u
              local.get 2
              i32.load
              local.tee 1
              local.get 9
              i32.shl
              i32.or
              i32.store
              local.get 2
              i32.const 4
              i32.add
              local.set 2
              local.get 4
              i32.const 4
              i32.add
              local.tee 4
              local.get 0
              i32.lt_u
              br_if 0 (;@5;)
            end
            br 1 (;@3;)
          end
          local.get 6
          i32.const 0
          i32.le_s
          br_if 0 (;@3;)
          local.get 5
          local.set 2
          loop  ;; label = @4
            local.get 4
            local.get 2
            i32.load
            i32.store
            local.get 2
            i32.const 4
            i32.add
            local.set 2
            local.get 4
            i32.const 4
            i32.add
            local.tee 4
            local.get 0
            i32.lt_u
            br_if 0 (;@4;)
          end
        end
        local.get 3
        i32.const 3
        i32.and
        local.set 3
        local.get 5
        local.get 6
        i32.add
        local.set 2
      end
      local.get 3
      if  ;; label = @2
        local.get 0
        local.get 3
        i32.add
        local.set 1
        loop  ;; label = @3
          local.get 0
          local.get 2
          i32.load8_u
          i32.store8
          local.get 2
          i32.const 1
          i32.add
          local.set 2
          local.get 0
          i32.const 1
          i32.add
          local.tee 0
          local.get 1
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      return
    end
    call 138
    unreachable)
  (func (;86;) (type 5) (param i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 0
    i32.load8_u offset=4
    local.get 0
    i32.const 0
    i32.store8 offset=4
    i32.const 1
    i32.and
    if  ;; label = @1
      local.get 1
      i32.const 8
      i32.add
      i32.const 0
      i32.const 1049292
      i32.load
      call 87
      local.get 0
      i32.load
      local.get 1
      i32.load offset=8
      local.get 1
      i32.load offset=12
      call 6
      drop
      i32.const 1049292
      i32.const 0
      i32.store
      i32.const 1059296
      i32.const 0
      i32.store8
    end
    local.get 1
    i32.const 16
    i32.add
    global.set 0)
  (func (;87;) (type 4) (param i32 i32 i32)
    block  ;; label = @1
      local.get 1
      local.get 2
      i32.le_u
      if  ;; label = @2
        local.get 2
        i32.const 10000
        i32.le_u
        br_if 1 (;@1;)
        call 40
        unreachable
      end
      call 40
      unreachable
    end
    local.get 0
    local.get 2
    local.get 1
    i32.sub
    i32.store offset=4
    local.get 0
    local.get 1
    i32.const 1049296
    i32.add
    i32.store)
  (func (;88;) (type 3) (param i32) (result i32)
    (local i64)
    local.get 0
    call 89
    local.tee 1
    i64.const 4294967296
    i64.ge_u
    if  ;; label = @1
      i32.const 1048661
      i32.const 14
      call 72
      unreachable
    end
    local.get 1
    i32.wrap_i64)
  (func (;89;) (type 12) (param i32) (result i64)
    (local i32 i32 i64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i64.const 0
    i64.store offset=8
    local.get 0
    call 90
    local.tee 0
    call 12
    local.tee 2
    i32.const 9
    i32.ge_u
    if  ;; label = @1
      i32.const 1048661
      i32.const 14
      call 72
      unreachable
    end
    local.get 1
    local.get 1
    i32.const 8
    i32.add
    i32.const 8
    local.get 2
    call 113
    local.get 0
    i32.const 0
    local.get 1
    i32.load
    local.tee 0
    local.get 1
    i32.load offset=4
    local.tee 2
    call 50
    drop
    local.get 0
    local.get 2
    call 70
    local.get 1
    i32.const 16
    i32.add
    global.set 0)
  (func (;90;) (type 3) (param i32) (result i32)
    local.get 0
    call 38
    local.tee 0
    call 24
    drop
    local.get 0)
  (func (;91;) (type 2) (param i32 i32)
    local.get 1
    i32.const 2147483646
    i32.ne
    if  ;; label = @1
      local.get 0
      local.get 1
      call 25
      drop
      return
    end
    local.get 0
    i32.const 1048719
    i32.const 4
    call 92)
  (func (;92;) (type 4) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call 53
    call 25
    drop)
  (func (;93;) (type 5) (param i32)
    i32.const -20
    i32.const 0
    i32.const 0
    call 21
    drop
    local.get 0
    i32.const -20
    call 25
    drop)
  (func (;94;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    i64.extend_i32_u
    call 95)
  (func (;95;) (type 9) (param i32 i64)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i64.const 0
    i64.store offset=8
    local.get 2
    local.get 1
    i32.const 0
    local.get 2
    i32.const 8
    i32.add
    call 104
    local.get 0
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call 92
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;96;) (type 0) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call 97
    call 90
    call 56)
  (func (;97;) (type 0) (param i32 i32) (result i32)
    local.get 0
    call 42
    local.tee 0
    i32.const 1048741
    i32.const 5
    call 6
    drop
    local.get 1
    local.get 0
    call 98
    local.get 0)
  (func (;98;) (type 2) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    local.get 0
    i32.const 24
    i32.shl
    i32.or
    local.get 0
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 0
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    call 73
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;99;) (type 3) (param i32) (result i32)
    (local i64)
    block (result i32)  ;; label = @1
      block  ;; label = @2
        local.get 0
        call 89
        local.tee 1
        i64.const 1
        i64.le_u
        if  ;; label = @3
          i32.const 0
          local.get 1
          i32.wrap_i64
          i32.const 1
          i32.sub
          br_if 2 (;@1;)
          drop
          br 1 (;@2;)
        end
        i32.const 1049023
        i32.const 18
        call 72
        unreachable
      end
      i32.const 1
    end)
  (func (;100;) (type 3) (param i32) (result i32)
    local.get 0
    call 68
    call 56)
  (func (;101;) (type 3) (param i32) (result i32)
    local.get 0
    call 68
    call 38
    local.tee 0
    call 26
    drop
    local.get 0)
  (func (;102;) (type 3) (param i32) (result i32)
    local.get 0
    call 90
    local.tee 0
    call 12
    i32.const 32
    i32.ne
    if  ;; label = @1
      i32.const 1049063
      i32.const 16
      call 72
      unreachable
    end
    local.get 0)
  (func (;103;) (type 2) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i64.const 0
    i64.store offset=8
    local.get 2
    local.get 1
    i64.extend_i32_u
    i32.const 1
    local.get 2
    i32.const 8
    i32.add
    call 104
    local.get 0
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call 92
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;104;) (type 18) (param i32 i64 i32 i32)
    (local i32 i32 i32 i32 i64)
    local.get 3
    local.get 1
    i64.const 40
    i64.shl
    i64.const 71776119061217280
    i64.and
    local.get 1
    i64.const 56
    i64.shl
    i64.or
    local.get 1
    i64.const 24
    i64.shl
    i64.const 280375465082880
    i64.and
    local.get 1
    i64.const 8
    i64.shl
    i64.const 1095216660480
    i64.and
    i64.or
    i64.or
    local.get 1
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 1
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 1
    i64.const 40
    i64.shr_u
    i64.const 65280
    i64.and
    local.get 1
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or
    local.tee 8
    i64.store align=1
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        block (result i32)  ;; label = @3
          local.get 1
          i64.eqz
          if  ;; label = @4
            i32.const 1049160
            local.set 3
            i32.const 0
            br 1 (;@3;)
          end
          local.get 2
          i32.const 0
          local.get 1
          i64.const -1
          i64.eq
          select
          i32.eqz
          if  ;; label = @4
            i32.const 0
            local.get 2
            local.get 8
            i64.const 128
            i64.and
            i64.const 7
            i64.shr_u
            i32.wrap_i64
            i32.and
            local.tee 5
            i32.sub
            i32.const 255
            i32.and
            local.set 6
            loop  ;; label = @5
              local.get 4
              i32.const 8
              i32.eq
              br_if 3 (;@2;)
              local.get 6
              local.get 3
              local.get 4
              i32.add
              i32.load8_u
              local.tee 7
              i32.ne
              if  ;; label = @6
                local.get 4
                local.get 2
                local.get 7
                i32.const 7
                i32.shr_u
                local.get 5
                i32.ne
                i32.and
                local.tee 2
                i32.sub
                i32.const 9
                i32.ge_u
                br_if 5 (;@1;)
                local.get 3
                i32.const 0
                local.get 2
                i32.sub
                local.tee 2
                i32.add
                local.get 4
                i32.add
                local.set 3
                i32.const 8
                local.get 2
                local.get 4
                i32.add
                i32.sub
                br 3 (;@3;)
              else
                local.get 4
                i32.const 1
                i32.add
                local.set 4
                br 1 (;@5;)
              end
              unreachable
            end
            unreachable
          end
          local.get 3
          i32.const 7
          i32.add
          local.set 3
          i32.const 1
        end
        i32.store offset=4
        local.get 0
        local.get 3
        i32.store
        return
      end
      call 137
      unreachable
    end
    call 137
    unreachable)
  (func (;105;) (type 2) (param i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    call 61
    local.get 2
    local.get 2
    i32.load
    i32.store offset=8
    local.get 2
    local.get 2
    i32.load8_u offset=4
    i32.const 1
    i32.and
    i32.store8 offset=12
    local.get 1
    i32.load offset=8
    local.get 2
    i32.const 8
    i32.add
    local.tee 3
    call 62
    local.get 3
    local.get 1
    i32.load offset=12
    call 63
    local.get 1
    i32.load offset=16
    local.get 3
    call 64
    local.get 1
    i32.load offset=20
    local.get 3
    call 65
    local.get 1
    i32.load offset=24
    local.get 3
    call 64
    local.get 1
    i32.load offset=28
    local.get 3
    call 65
    local.get 1
    i64.load
    local.get 3
    call 66
    local.get 0
    local.get 2
    i32.load offset=8
    local.get 2
    i32.load8_u offset=12
    call 67
    call 25
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;106;) (type 3) (param i32) (result i32)
    local.get 0
    i32.const -25
    call 24
    drop
    i32.const -25
    call 12
    i32.eqz)
  (func (;107;) (type 0) (param i32 i32) (result i32)
    local.get 0
    i32.load
    call 42
    local.tee 0
    i32.const 1048746
    i32.const 6
    call 6
    drop
    local.get 1
    i32.const 2147483646
    i32.ne
    if  ;; label = @1
      local.get 1
      local.get 0
      call 108
      local.get 0
      return
    end
    i32.const 4
    local.get 0
    call 98
    local.get 0
    i32.const 1048719
    call 73
    local.get 0)
  (func (;108;) (type 2) (param i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    call 12
    local.tee 3
    i32.const 24
    i32.shl
    local.get 3
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    i32.or
    local.get 3
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 3
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    call 73
    local.get 1
    local.get 0
    call 77
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;109;) (type 0) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call 110
    i32.const 0
    i32.ne)
  (func (;110;) (type 0) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call 107
    call 88)
  (func (;111;) (type 4) (param i32 i32 i32)
    local.get 0
    local.get 1
    call 107
    local.get 2
    i64.extend_i32_u
    call 95)
  (func (;112;) (type 4) (param i32 i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load8_u offset=4
        if  ;; label = @3
          i32.const 10000
          i32.const 1049292
          i32.load
          local.tee 4
          i32.sub
          local.get 2
          i32.lt_u
          br_if 1 (;@2;)
          local.get 3
          i32.const 8
          i32.add
          local.get 4
          local.get 2
          local.get 4
          i32.add
          local.tee 0
          call 115
          local.get 3
          i32.load offset=8
          local.get 3
          i32.load offset=12
          local.get 1
          local.get 2
          call 85
          i32.const 1049292
          local.get 0
          i32.store
          br 2 (;@1;)
        end
        local.get 0
        i32.load
        local.get 1
        local.get 2
        call 6
        drop
        br 1 (;@1;)
      end
      local.get 0
      call 86
      local.get 0
      i32.load
      local.get 1
      local.get 2
      call 6
      drop
    end
    local.get 3
    i32.const 16
    i32.add
    global.set 0)
  (func (;113;) (type 8) (param i32 i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    i32.const 8
    i32.add
    i32.const 0
    local.get 3
    local.get 1
    local.get 2
    call 39
    local.get 4
    i32.load offset=12
    local.set 1
    local.get 0
    local.get 4
    i32.load offset=8
    i32.store
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 4
    i32.const 16
    i32.add
    global.set 0)
  (func (;114;) (type 3) (param i32) (result i32)
    (local i32)
    i32.const 2147483646
    local.set 1
    local.get 0
    i32.const 2147483646
    i32.ne
    if (result i32)  ;; label = @1
      local.get 0
      call 42
    else
      i32.const 2147483646
    end)
  (func (;115;) (type 4) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 8
    i32.add
    local.get 1
    local.get 2
    i32.const 1049296
    i32.const 10000
    call 39
    local.get 3
    i32.load offset=12
    local.set 1
    local.get 0
    local.get 3
    i32.load offset=8
    i32.store
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 3
    i32.const 16
    i32.add
    global.set 0)
  (func (;116;) (type 6) (result i32)
    i32.const 1049083
    i32.const 16
    call 53)
  (func (;117;) (type 0) (param i32 i32) (result i32)
    (local i32)
    i32.const 1049099
    i32.const 10
    call 53
    local.set 2
    local.get 0
    i32.load
    local.get 2
    call 108
    local.get 2
    local.get 1
    call 77
    local.get 2)
  (func (;118;) (type 6) (result i32)
    i32.const 1049109
    i32.const 12
    call 53)
  (func (;119;) (type 5) (param i32)
    (local i32 i32 i32)
    i32.const 1049121
    i32.const 13
    call 53
    local.tee 1
    call 42
    local.set 2
    local.get 1
    call 42
    local.tee 3
    i32.const 1049079
    i32.const 4
    call 6
    drop
    local.get 0
    i32.const 8
    i32.add
    local.get 3
    i32.store
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store)
  (func (;120;) (type 6) (result i32)
    i32.const 1049134
    i32.const 17
    call 53)
  (func (;121;) (type 3) (param i32) (result i32)
    (local i32)
    i32.const 1049151
    i32.const 6
    call 53
    local.set 1
    local.get 0
    i32.load
    local.get 1
    call 108
    local.get 1)
  (func (;122;) (type 1)
    (local i32 i32)
    call 29
    i32.const 2
    call 58
    call 57
    local.set 0
    i32.const 1049005
    i32.const 18
    call 54
    local.set 1
    call 116
    local.get 0
    call 94
    call 120
    local.get 1
    call 25
    drop)
  (func (;123;) (type 1)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 0
    global.set 0
    i32.const 1
    call 58
    local.get 0
    i32.const 0
    call 51
    local.tee 5
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const 12
          i32.add
          call 121
          call 106
          i32.eqz
          if  ;; label = @4
            call 118
            call 99
            i32.eqz
            br_if 1 (;@3;)
            call 47
            local.get 0
            i32.const 16
            i32.add
            local.get 0
            i32.const 12
            i32.add
            call 121
            call 60
            local.get 0
            call 49
            local.get 0
            i64.load offset=16
            local.set 14
            local.get 0
            i32.load offset=44
            local.set 1
            local.get 0
            i32.load offset=28
            local.set 7
            local.get 0
            i32.load offset=36
            local.set 3
            local.get 0
            i32.load offset=32
            local.set 8
            local.get 0
            i32.load offset=4
            local.set 4
            local.get 0
            i32.load
            local.tee 2
            local.get 0
            i32.load offset=40
            local.tee 6
            i32.ne
            if  ;; label = @5
              local.get 2
              i32.const 2147483646
              i32.eq
              local.get 6
              i32.const 2147483646
              i32.eq
              i32.or
              br_if 3 (;@2;)
              local.get 2
              local.get 6
              call 43
              i32.eqz
              br_if 3 (;@2;)
            end
            local.get 4
            local.get 1
            call 75
            i32.const 255
            i32.and
            i32.const 1
            i32.eq
            br_if 3 (;@1;)
            local.get 3
            call 37
            local.set 9
            local.get 1
            call 37
            local.set 10
            local.get 4
            call 37
            local.set 11
            call 38
            local.tee 2
            local.get 11
            local.get 9
            call 23
            local.get 2
            local.get 2
            local.get 10
            call 22
            local.get 3
            local.get 2
            call 82
            local.set 3
            local.get 1
            local.get 4
            call 82
            local.set 1
            local.get 5
            call 42
            local.set 5
            local.get 7
            call 42
            local.set 9
            local.get 8
            call 114
            local.set 10
            local.get 3
            call 37
            local.set 11
            local.get 6
            call 114
            local.set 13
            local.get 0
            local.get 1
            call 37
            i32.store offset=76
            local.get 0
            local.get 13
            i32.store offset=72
            local.get 0
            local.get 11
            i32.store offset=68
            local.get 0
            local.get 10
            i32.store offset=64
            local.get 0
            local.get 9
            i32.store offset=60
            local.get 0
            local.get 5
            i32.store offset=56
            local.get 0
            local.get 14
            i64.store offset=48
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                call 83
                call 74
                if  ;; label = @7
                  local.get 3
                  call 83
                  call 74
                  br_if 1 (;@6;)
                end
                local.get 0
                i32.const 12
                i32.add
                local.tee 1
                call 121
                local.get 0
                i32.const 48
                i32.add
                local.tee 3
                call 105
                local.get 1
                local.get 7
                call 117
                local.get 3
                call 105
                br 1 (;@5;)
              end
              local.get 0
              i32.const 12
              i32.add
              local.tee 1
              call 121
              call 93
              local.get 1
              local.get 7
              call 117
              call 93
            end
            call 116
            call 88
            local.set 1
            local.get 4
            call 37
            local.get 1
            call 41
            call 79
            i32.const 100
            call 41
            call 78
            local.set 3
            local.get 4
            call 37
            local.get 3
            call 80
            local.set 5
            local.get 2
            call 37
            local.get 1
            call 41
            call 79
            i32.const 100
            call 41
            call 78
            local.set 4
            local.get 2
            call 37
            local.get 4
            call 80
            local.set 1
            call 120
            call 102
            local.set 2
            local.get 7
            local.get 6
            local.get 5
            call 45
            local.get 8
            local.get 1
            call 45
            local.get 2
            local.get 6
            local.get 3
            call 45
            local.get 2
            local.get 8
            local.get 4
            call 45
            local.get 0
            i32.const 80
            i32.add
            global.set 0
            return
          end
          i32.const 1048752
          i32.const 24
          call 44
          unreachable
        end
        i32.const 1048776
        i32.const 18
        call 44
        unreachable
      end
      i32.const 1048794
      i32.const 41
      call 44
      unreachable
    end
    i32.const 1048835
    i32.const 41
    call 44
    unreachable)
  (func (;124;) (type 1)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 0
    global.set 0
    call 29
    i32.const 1
    call 58
    local.get 0
    i32.const 0
    call 51
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        call 118
        call 99
        if  ;; label = @3
          local.get 0
          i32.const 12
          i32.add
          call 121
          call 106
          br_if 1 (;@2;)
          call 47
          local.set 2
          local.get 0
          i32.const 16
          i32.add
          local.get 0
          i32.const 12
          i32.add
          call 121
          call 60
          local.get 0
          i32.load offset=36
          local.set 1
          local.get 0
          i32.load offset=32
          local.set 3
          local.get 0
          i32.load offset=28
          local.tee 4
          local.get 2
          call 43
          i32.eqz
          br_if 2 (;@1;)
          local.get 4
          local.get 3
          local.get 1
          call 45
          local.get 0
          i32.const 12
          i32.add
          local.tee 1
          call 121
          call 93
          local.get 1
          local.get 2
          call 117
          call 93
          local.get 0
          i32.const 48
          i32.add
          global.set 0
          return
        end
        i32.const 1048776
        i32.const 18
        call 44
        unreachable
      end
      i32.const 1048752
      i32.const 24
      call 44
      unreachable
    end
    i32.const 1048876
    i32.const 32
    call 44
    unreachable)
  (func (;125;) (type 1)
    (local i32)
    call 29
    call 48
    i32.const 1
    call 58
    call 57
    local.set 0
    call 116
    local.get 0
    call 94)
  (func (;126;) (type 1)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 0
    global.set 0
    i32.const 2
    call 58
    call 55
    local.set 3
    i32.const 1
    call 38
    local.tee 1
    call 16
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          call 118
          call 99
          if  ;; label = @4
            local.get 1
            call 30
            i32.const 0
            i32.le_s
            br_if 1 (;@3;)
            local.get 0
            call 49
            local.get 0
            i32.load offset=4
            local.set 6
            local.get 0
            i32.load
            local.set 5
            local.get 0
            i32.const 16
            i32.add
            local.tee 2
            call 119
            local.get 2
            local.get 3
            call 109
            i32.eqz
            br_if 2 (;@2;)
            local.get 0
            i32.const 16
            i32.add
            local.tee 2
            call 119
            local.get 2
            local.get 5
            call 109
            i32.eqz
            br_if 3 (;@1;)
            call 47
            local.set 2
            call 31
            local.set 9
            call 46
            local.tee 4
            i32.const 32
            call 32
            drop
            local.get 0
            local.get 4
            call 42
            local.tee 4
            i32.store offset=12
            local.get 4
            call 42
            local.set 7
            local.get 2
            call 42
            local.set 8
            local.get 0
            local.get 1
            i32.store offset=44
            local.get 0
            local.get 3
            i32.store offset=40
            local.get 0
            local.get 6
            i32.store offset=36
            local.get 0
            local.get 5
            i32.store offset=32
            local.get 0
            local.get 8
            i32.store offset=28
            local.get 0
            local.get 7
            i32.store offset=24
            local.get 0
            local.get 9
            i64.store offset=16
            local.get 0
            i32.const 12
            i32.add
            local.tee 3
            call 121
            local.get 0
            i32.const 16
            i32.add
            local.tee 1
            call 105
            local.get 3
            local.get 2
            call 117
            local.get 1
            call 105
            local.get 4
            call 19
            drop
            local.get 0
            i32.const 48
            i32.add
            global.set 0
            return
          end
          i32.const 1048776
          i32.const 18
          call 44
          unreachable
        end
        i32.const 1048908
        i32.const 28
        call 44
        unreachable
      end
      i32.const 1048936
      i32.const 22
      call 44
      unreachable
    end
    i32.const 1048936
    i32.const 22
    call 44
    unreachable)
  (func (;127;) (type 1)
    call 29
    call 48
    i32.const 0
    call 58
    call 118
    call 99
    i32.eqz
    if  ;; label = @1
      i32.const 1048974
      i32.const 17
      call 44
      unreachable
    end
    call 118
    i32.const 0
    call 103)
  (func (;128;) (type 1)
    call 29
    call 48
    i32.const 0
    call 58
    call 118
    call 99
    if  ;; label = @1
      i32.const 1048958
      i32.const 16
      call 44
      unreachable
    end
    call 118
    i32.const 1
    call 103)
  (func (;129;) (type 1)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    call 29
    i32.const 0
    call 58
    local.get 0
    call 119
    local.get 0
    i32.const 8
    i32.add
    i32.load
    call 88
    local.set 2
    local.get 0
    i32.load offset=4
    local.set 3
    i32.const 1
    local.set 1
    loop  ;; label = @1
      local.get 1
      local.get 2
      i32.gt_u
      i32.eqz
      if  ;; label = @2
        block  ;; label = @3
          local.get 3
          local.get 1
          call 96
          local.tee 4
          i32.const 2147483646
          i32.ne
          if  ;; label = @4
            local.get 4
            call 19
            drop
            br 1 (;@3;)
          end
          i32.const 1048719
          i32.const 4
          call 33
        end
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        br 1 (;@1;)
      end
    end
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;130;) (type 1)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    call 29
    i32.const 1
    call 58
    local.get 0
    i32.const 0
    call 51
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call 121
    call 59
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;131;) (type 1)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    call 29
    i32.const 2
    call 58
    i32.const 0
    call 51
    local.set 1
    i32.const 1048991
    i32.const 4
    call 54
    local.set 2
    local.get 0
    local.get 1
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    local.get 2
    call 117
    call 59
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;132;) (type 1)
    call 29
    i32.const 0
    call 58
    call 116
    call 88
    i64.extend_i32_u
    call 34)
  (func (;133;) (type 1)
    call 29
    i32.const 0
    call 58
    call 120
    call 102
    call 19
    drop)
  (func (;134;) (type 1)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    call 29
    call 48
    i32.const 1
    call 58
    call 55
    local.set 4
    local.get 0
    call 119
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          local.get 4
          call 109
          if  ;; label = @4
            local.get 0
            call 119
            local.get 0
            local.get 4
            call 110
            local.tee 2
            i32.eqz
            br_if 2 (;@2;)
            block  ;; label = @5
              local.get 2
              local.get 0
              i32.const 8
              i32.add
              i32.load
              local.tee 3
              call 88
              local.tee 1
              i32.le_u
              if  ;; label = @6
                local.get 1
                local.get 2
                i32.eq
                local.tee 6
                br_if 3 (;@3;)
                local.get 3
                call 88
                local.get 1
                i32.lt_u
                br_if 5 (;@1;)
                local.get 0
                i32.load offset=4
                local.tee 7
                local.get 1
                call 96
                local.set 5
                local.get 3
                call 88
                local.get 2
                i32.lt_u
                br_if 1 (;@5;)
                local.get 7
                local.get 2
                call 97
                local.get 5
                call 91
                br 3 (;@3;)
              end
              br 4 (;@1;)
            end
            br 3 (;@1;)
          end
          i32.const 1048936
          i32.const 22
          call 44
          unreachable
        end
        local.get 3
        call 88
        local.get 1
        i32.lt_u
        if  ;; label = @3
          br 2 (;@1;)
        end
        local.get 0
        i32.load offset=4
        local.get 1
        call 97
        call 93
        local.get 3
        local.get 1
        i32.const 1
        i32.sub
        call 94
        local.get 6
        i32.eqz
        if  ;; label = @3
          local.get 0
          local.get 5
          local.get 2
          call 111
        end
        local.get 0
        local.get 4
        call 107
        call 93
      end
      local.get 0
      i32.const 16
      i32.add
      global.set 0
      return
    end
    i32.const 1048723
    i32.const 18
    call 2
    unreachable)
  (func (;135;) (type 1)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    call 29
    call 48
    i32.const 1
    call 58
    call 55
    local.set 1
    local.get 0
    call 119
    local.get 0
    local.get 1
    call 109
    i32.eqz
    if  ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      i32.load
      local.tee 3
      call 88
      local.set 2
      local.get 0
      i32.load offset=4
      local.get 2
      i32.const 1
      i32.add
      local.tee 2
      call 97
      local.get 1
      call 91
      local.get 3
      local.get 2
      call 94
      local.get 0
      local.get 1
      local.get 3
      call 88
      call 111
    end
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;136;) (type 1)
    nop)
  (func (;137;) (type 1)
    i32.const 1049272
    i32.const 14
    call 2
    unreachable)
  (func (;138;) (type 1)
    call 137
    unreachable)
  (memory (;0;) 17)
  (global (;0;) (mut i32) (i32.const 1048576))
  (global (;1;) i32 (i32.const 1059305))
  (global (;2;) i32 (i32.const 1059312))
  (export "memory" (memory 0))
  (export "init" (func 122))
  (export "acceptOffer" (func 123))
  (export "cancelOffer" (func 124))
  (export "changeRoyalities" (func 125))
  (export "createOffer" (func 126))
  (export "disableOffers" (func 127))
  (export "enableOffers" (func 128))
  (export "getESDTwhitelist" (func 129))
  (export "getOffers" (func 130))
  (export "getOffersUser" (func 131))
  (export "getRoyalities" (func 132))
  (export "getRoyalitiesAddress" (func 133))
  (export "removeWhitelistToken" (func 134))
  (export "whitelistToken" (func 135))
  (export "callBack" (func 136))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (data (;0;) (i32.const 1048576) "incorrect number of ESDT transfersargument decode error (): wrong number of argumentsinput too longinput too shortManagedVec index out of rangeEGLDindex out of range.item.indexThis offer do not exist.Disabled by owner.This token is not allowed for this offer.You cannnot trade more than was provided.you are not Creator of the offerAmount cannot be bellow zeroNot whitelisted token.Already enabled.Already disabled.userroyalitiesroyalities_addressinput out of rangestorage decode error: bad array length.lenchangeRoyalitiesoffersUseroffersOnlineesdtWhitelistroyalitiesAddressoffers\00\00\00fungible ESDT token expectedEndpoint can only be called by ownercannot subtract because result would be negativepanic occurred")
  (data (;1;) (i32.const 1049288) "\9c\ff\ff\ff"))
