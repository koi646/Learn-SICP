#lang racket
; 执行函数  执行函数的次数
(define (repeated fn n)
  (lambda (x)
          (define (iter k n result)
            (cond ((= k n) result)
                  (else (iter (+ k 1) n (fn result)))))
          (iter 0 n x)))
(define (suqare x)
  (* x x))
((repeated suqare 2) 5)
