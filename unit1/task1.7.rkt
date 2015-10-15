#lang racket
#|
原牛顿法求平方根
误差判断
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
(display (sqrt 2))

当数很大的时候,举例如 1000000000000000000000000 因为判断条件太苛刻(0.001) 所以程序耗时比较大,甚至崩溃
当数很小,小于0.001的时候 如0.000001 会导致程序直接终止
|#

; 以下采用猜测值比率变化来判断程序是否终止

;比率判断
(define (good? x y expect)
  (define (abs x)
    (if (>= x 0) x
      (- x)))
  (< (abs (- 1 (/ x y))) expect))
;迭代
(define (sqrt-iter before_guess after_guess x)
  (display after_guess)
  (newline)
  (if (good? before_guess after_guess  0.001)
    after_guess
    (sqrt-iter after_guess (improve after_guess x) x)))
(define (improve guess x)
  (cond ((= guess 0) (/ (+ (/ x 1.0) 1.0) 2))
        (else (/ (+ (/ x guess) guess) 2))))
(define (sqrt x)
  (sqrt-iter 0 1.0 x))
(display (sqrt 0.0002))