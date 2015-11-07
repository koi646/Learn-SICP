#lang racket
;定义序列累加
(define (accumulate op initial sequence)
  (if (null? sequence)
    initial
    (op (car sequence)
        (accumulate op initial (cdr sequence)))))
;幂计算
(define (power x a)
  (define (iter a n result)
    (cond ((= a n) result)
          (else (iter a (+ n 1) (* result x)))))
  (iter a 0 1))
;horner规则
(define (horner-eval x coefficient-sequence)
  (accumulate (lambda (this-coeff higher-terms)
                      (+ this-coeff (* higher-terms x))
                      )
              0
              coefficient-sequence))
(horner-eval 2 (list 1 3 0 5 0 1))
