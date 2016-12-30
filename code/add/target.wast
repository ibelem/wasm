(module
  (type $FUNCSIG$vi (func (param i32)))
  (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
  (import "env" "STACKTOP" (global $STACKTOP$asm2wasm$import i32))
  (import "env" "STACK_MAX" (global $STACK_MAX$asm2wasm$import i32))
  (import "env" "DYNAMICTOP_PTR" (global $DYNAMICTOP_PTR$asm2wasm$import i32))
  (import "env" "tempDoublePtr" (global $tempDoublePtr$asm2wasm$import i32))
  (import "env" "ABORT" (global $ABORT$asm2wasm$import i32))
  (import "env" "gb" (global $gb$asm2wasm$import i32))
  (import "env" "fb" (global $fb$asm2wasm$import i32))
  (import "global" "NaN" (global $nan$asm2wasm$import f64))
  (import "global" "Infinity" (global $inf$asm2wasm$import f64))
  (import "env" "abortStackOverflow" (func $abortStackOverflow (param i32)))
  (import "env" "_printf" (func $_printf (param i32 i32) (result i32)))
  (import "env" "memory" (memory $0 256 256))
  (import "env" "table" (table 0 0 anyfunc))
  (import "env" "memoryBase" (global $memoryBase i32))
  (import "env" "tableBase" (global $tableBase i32))
  (global $STACKTOP (mut i32) (get_global $STACKTOP$asm2wasm$import))
  (global $STACK_MAX (mut i32) (get_global $STACK_MAX$asm2wasm$import))
  (global $DYNAMICTOP_PTR (mut i32) (get_global $DYNAMICTOP_PTR$asm2wasm$import))
  (global $tempDoublePtr (mut i32) (get_global $tempDoublePtr$asm2wasm$import))
  (global $ABORT (mut i32) (get_global $ABORT$asm2wasm$import))
  (global $gb (mut i32) (get_global $gb$asm2wasm$import))
  (global $fb (mut i32) (get_global $fb$asm2wasm$import))
  (global $__THREW__ (mut i32) (i32.const 0))
  (global $threwValue (mut i32) (i32.const 0))
  (global $setjmpId (mut i32) (i32.const 0))
  (global $undef (mut i32) (i32.const 0))
  (global $nan (mut f64) (get_global $nan$asm2wasm$import))
  (global $inf (mut f64) (get_global $inf$asm2wasm$import))
  (global $tempInt (mut i32) (i32.const 0))
  (global $tempBigInt (mut i32) (i32.const 0))
  (global $tempBigIntP (mut i32) (i32.const 0))
  (global $tempBigIntS (mut i32) (i32.const 0))
  (global $tempBigIntR (mut f64) (f64.const 0))
  (global $tempBigIntI (mut i32) (i32.const 0))
  (global $tempBigIntD (mut i32) (i32.const 0))
  (global $tempValue (mut i32) (i32.const 0))
  (global $tempDouble (mut f64) (f64.const 0))
  (global $tempRet0 (mut i32) (i32.const 0))
  (global $tempFloat (mut f32) (f32.const 0))
  (global $f0 (mut f32) (f32.const 0))
  (export "_main" (func $_main))
  (export "establishStackSpace" (func $establishStackSpace))
  (export "stackRestore" (func $stackRestore))
  (export "_add" (func $_add))
  (export "setThrew" (func $setThrew))
  (export "stackAlloc" (func $stackAlloc))
  (export "stackSave" (func $stackSave))
  (export "runPostSets" (func $runPostSets))
  (func $stackAlloc (param $size i32) (result i32)
    (local $ret i32)
    (set_local $ret
      (get_global $STACKTOP)
    )
    (set_global $STACKTOP
      (i32.add
        (get_global $STACKTOP)
        (get_local $size)
      )
    )
    (set_global $STACKTOP
      (i32.and
        (i32.add
          (get_global $STACKTOP)
          (i32.const 15)
        )
        (i32.const -16)
      )
    )
    (if
      (i32.ge_s
        (get_global $STACKTOP)
        (get_global $STACK_MAX)
      )
      (call $abortStackOverflow
        (get_local $size)
      )
    )
    (return
      (get_local $ret)
    )
  )
  (func $stackSave (result i32)
    (return
      (get_global $STACKTOP)
    )
  )
  (func $stackRestore (param $top i32)
    (set_global $STACKTOP
      (get_local $top)
    )
  )
  (func $establishStackSpace (param $stackBase i32) (param $stackMax i32)
    (set_global $STACKTOP
      (get_local $stackBase)
    )
    (set_global $STACK_MAX
      (get_local $stackMax)
    )
  )
  (func $setThrew (param $threw i32) (param $value i32)
    (if
      (i32.eq
        (get_global $__THREW__)
        (i32.const 0)
      )
      (block
        (set_global $__THREW__
          (get_local $threw)
        )
        (set_global $threwValue
          (get_local $value)
        )
      )
    )
  )
  (func $_add (param $$0 i32) (param $$1 i32) (result i32)
    (local $$2 i32)
    (local $$3 i32)
    (local $$4 i32)
    (local $$5 i32)
    (local $$6 i32)
    (local $label i32)
    (local $sp i32)
    (set_local $sp
      (get_global $STACKTOP)
    )
    (set_global $STACKTOP
      (i32.add
        (get_global $STACKTOP)
        (i32.const 16)
      )
    )
    (if
      (i32.ge_s
        (get_global $STACKTOP)
        (get_global $STACK_MAX)
      )
      (call $abortStackOverflow
        (i32.const 16)
      )
    )
    (set_local $$2
      (get_local $$0)
    )
    (set_local $$3
      (get_local $$1)
    )
    (set_local $$4
      (get_local $$2)
    )
    (set_local $$5
      (get_local $$3)
    )
    (set_local $$6
      (i32.add
        (get_local $$4)
        (get_local $$5)
      )
    )
    (set_global $STACKTOP
      (get_local $sp)
    )
    (return
      (get_local $$6)
    )
  )
  (func $_main (result i32)
    (local $$0 i32)
    (local $$vararg_buffer i32)
    (local $label i32)
    (local $sp i32)
    (set_local $sp
      (get_global $STACKTOP)
    )
    (set_global $STACKTOP
      (i32.add
        (get_global $STACKTOP)
        (i32.const 16)
      )
    )
    (if
      (i32.ge_s
        (get_global $STACKTOP)
        (get_global $STACK_MAX)
      )
      (call $abortStackOverflow
        (i32.const 16)
      )
    )
    (set_local $$vararg_buffer
      (get_local $sp)
    )
    (set_local $$0
      (call $_add
        (i32.const 1)
        (i32.const 2)
      )
    )
    (i32.store
      (get_local $$vararg_buffer)
      (get_local $$0)
    )
    (drop
      (call $_printf
        (i32.add
          (get_global $gb)
          (i32.const 0)
        )
        (get_local $$vararg_buffer)
      )
    )
    (set_global $STACKTOP
      (get_local $sp)
    )
    (return
      (i32.const 0)
    )
  )
  (func $runPostSets
    (local $temp i32)
    (nop)
  )
)
