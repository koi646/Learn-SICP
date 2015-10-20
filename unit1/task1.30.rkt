#lang racket
;迭代计算
(define (sum term a next b)
  (define (iter a result)
    (if (> a b) result
    (iter (next a) (+ result (term a)))))
  (iter a 0))
(define (cube x)
  (* x x x))
(define (next x)
  (+ x 1))
(sum cube 0 next 10)
