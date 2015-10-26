/*
可以用闭包来模拟python的元组
*/
function cons(x, y) {
  return function (f) {
    return f(x, y);
  }
}
function car(z) {
  return z(function(p, q) {
    return p;
  })
};
console.log(car(cons(1,2)));
