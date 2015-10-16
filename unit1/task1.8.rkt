#lang r5rs
(define (good? x y expect)
  (define (abs x)
    (if (>= x 0) x
      (- x)))
  (< (abs (- 1 (/ x y))) expect))
;迭代
(define (sqrt-iter before_guess after_guess x)
  (if (good? before_guess after_guess  0.001)
    after_guess
    (sqrt-iter after_guess (improve after_guess x) x)))
;进一步求得更加接近的猜测值
(define (improve guess x)
  (newline)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))
(define (sqrt x)
  (sqrt-iter 0 1.0 x))

(display (sqrt 8))