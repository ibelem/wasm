function fibonacci(n) {
  if (n <= 2) {
    return 1
  } else 
    return fibonacci(n - 1) + fibonacci(n - 2)
}

function run(num) {
  let starttime,
    endtime,
    runtime
  console.time('>')
  console.log('.js fibonacci('+ num +'): ' + fibonacci(num))
  console.timeEnd('>')
}(function main() {
  run(50);
  /*
  run(100)
  run(200)
  run(400)
  run(800)
  run(1000)
  */
})()