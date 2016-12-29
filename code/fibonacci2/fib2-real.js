function fibonacci_(n) {
  let a = 0
  let b = 1
  while (n > 1) {
    let t = b
    b = a + b
    a = t
    n--
  }
  return b
}

function fibonacci(n) {
  if (n <= 2) {
    return 1
  } else 
    return fibonacci(n - 2) + fibonacci(n - 1)
}

function run(num) {
  let starttime,
    endtime,
    runtime
  console.time('>')
  console.log('fibonacci('+ num +'): ' + fibonacci_(num))
  console.timeEnd('>')
}(function main() {
  run(10)
  run(20)
  run(30)
  run(40)
  run(50)
  run(60)
  run(70)
  run(80)
  run(90)
  run(100)
})()
