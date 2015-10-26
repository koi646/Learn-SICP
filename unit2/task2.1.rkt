#lang racket
; numer返回分子 denom返回分母
(define numer car)
(define denom cdr)
;绝对值
(define (abs x)
  (if (> x 0) x
      (- 0 x)))
(define (make-rat n d)
  (cond ((>= (* n d) 0) (cons (abs n) (abs d)))
        (else (cons (- 0 (abs n)) (abs d)))))
(define (print-rat x)
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x)))
(define value (make-rat 3 -5))
(print-rat value)
