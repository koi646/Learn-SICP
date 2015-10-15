#lang racket
(define (new-if predicate thenclause else-clasuse)
  (cond (predicate thenclause)
        (else else-clasuse)))
(new-if (> 2 1) (display "2比1大") (display "2比1小"))

#|
没有用书上的例子,用以上的例子就发现了new-if的问题
<击穿现象>
因为lisp采用的是应用序。先求值 后带入
所以如果thenclause和else-clasuse为逻辑运算语句,会出现先执行后带入,导致if else失效
|#

;递归求牛顿法求平方根

;误差判断
(define (good? x y expect)
  ;定义绝对值
  (define (abs x)
    (if (>= x 0) x
      (- x)))
  (define (square x)
    (* x x))
  (< (abs (- (square x) y)) expect))

(define (sqrt-iter guess x)
  (display guess)
  (newline)
  (if (good? guess x 0.001)
    guess
    (sqrt-iter (improve guess x) x)))
(define (improve guess x)
  (/
    (+ (/
         x guess) guess) 2))
(define (sqrt x)
  (sqrt-iter 1.0 x))
(display (sqrt 10000000000000000000000000000))
