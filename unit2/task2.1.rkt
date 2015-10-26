#lang racket
; numer返回分子 denom返回分母
(define numer car)
(define denom cdr)
;工具函数   绝对值
(define (abs x)
  (if (> x 0) x
      (- 0 x)))
;最大公约数
(define (gcd a b)
  (if (= b 0) a
      (gcd b (remainder a b))))
(define (make-rat n d)
  (let  ((GCD (gcd n d)))
  (cond ((>= (* n d) 0) (cons (abs (/ n GCD)) (abs (/ d GCD))))
        (else (cons (- 0 (abs (/ n GCD))) (abs (/ d GCD)))))))
(define (print-rat x)

  (newline)
  (display (numer x))
  (display "/")
  (display (denom x)))
(define value (make-rat 3 -6))
(print-rat value)
