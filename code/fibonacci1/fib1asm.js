function Module() {
  "use asm"

  function fibonacci(n) {
    n = n | 0
    if (n <= 2) {
      return 1
    } else 
      return ((fibonacci(n - 1) | 0) + (fibonacci(n - 2) | 0))
  }

  return {fibonacci: fibonacci}

}

module.exports = Module