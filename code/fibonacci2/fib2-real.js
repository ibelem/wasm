function fibonacci(n) {
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

function run(num) {
  let starttime,
    endtime,
    runtime
  console.time('>')
  console.log('fibonacci('+ num +'): ' + fibonacci(num))
  console.timeEnd('>')
}(function main() {
  run(1)
  run(2)
  run(3)
  run(10)
  run(20)
  run(40)
  run(60)
  run(80)
  run(100)
  run(200)
  run(400)
  run(800)
  run(1000)
})()
