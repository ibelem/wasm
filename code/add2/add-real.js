function add(a, b){
  return a + b;
}

let hz,
    period,
    startTime = new Date,
    runs = 0;
do {
  add(1, 1)
  runs++;
  totalTime = new Date - startTime;
} while (totalTime < 1000);

// 将毫秒转为秒
totalTime /= 100;

// period → 单位运算的耗时
period = totalTime / runs;

// hz → 单位时间（1秒）内进行的运算量
hz = 1 / period;

// 上面两步可以简写如下：
// hz = (runs * 1000) / totalTime;

console.log(hz)