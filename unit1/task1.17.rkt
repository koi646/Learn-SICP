#lang r5rs
(define (* a b)
  (define (double x)
    (+ x x))
  ;折半
  (define (halve x)
    (/ x 2))
  ;是否偶数
  (define (even? number)
    (= (remainder number 2) 0))
  (define (iter sum y)
    (cond ((= y 0) sum)
          ((even? y) (double (iter sum (halve y))))
          (else  (+ a (iter sum (- y 1))))))
  (iter 0 b))
(display (* 10 5))
;这就是1.18的题 1.17与1.18同理
