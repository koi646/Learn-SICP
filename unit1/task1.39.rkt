#lang racket
;递归计算
(define (cont-frace n d k)
  (define (iter n d i)
    (if (= i k) (/ (n i) (d i))
        (/ (n i) (+ (d i) (iter n d (+ i 1))))))
  (if (< k 1) (display "参数必须大于等于1")
      (iter n d 1)))
(define (tan x k)
  ;减少重复计算
  (let ((x2 (- 0 (* x x))))
  (cont-frace (lambda (i)
                      (if (= i 1) x
                          x2))
              (lambda (i)
                      (- (* i 2) 1.0)) k)))
(tan 30 1000)
