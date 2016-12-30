(module
  (memory 256 256)
  (export "memory" memory)
  (export "square" $square)
  (func $square (param $0 f64) (result f64)
    (f64.mul
      (get_local $0)
      (get_local $0)
    )
  )
)
