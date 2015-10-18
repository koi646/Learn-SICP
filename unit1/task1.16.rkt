#lang r5rs
(define (pow a n)
  ;判断是否偶数
  (define (even? x)
    (= (remainder x 2) 0))
  ;平方
  (define (square x)
    (* x x))
  (define (iter sum num)
    (cond ((= num 0) sum)
          ((even? num) (square (iter sum (/ num 2))))
          (else (* a (iter sum (- num 1))))))
  (iter 1 n))
(display (pow 2 11))
(newline)
