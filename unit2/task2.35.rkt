#lang racket
;定义序列累加
(define (accumulate op initial sequence)
  (if (null? sequence)
    initial
    (op (car sequence)
        (accumulate op initial (cdr sequence)))))

(define (count-leaves tree)
  (accumulate +
              0
              (map (lambda (x)
                           (cond ((pair? x) (count-leaves x))
                                  (else 1))) tree)))
(define test (list (list 1 2) (list 3 4)))
(define xx (list test test))
(count-leaves xx)
