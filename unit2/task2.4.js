/*
可以用闭包来模拟python的元组
*/
function cons() {
  var elemtns = arguments;
  return function (f) {
    return f(elemtns);
  }
}
function get(z,n) {
  return z(function(elemtns) {
    return elemtns[n];
  })
};
var b = cons(1,2,3);
console.log(get(cons(1,23,4,5,6),3));
