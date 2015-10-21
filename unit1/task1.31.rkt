#lang racket
;定义k的增长规则
(define (next a)
  (+ a 1))
;定义累乘  迭代计算
(define (product fn k next end num)
  (if (= k end) num
    (product fn (next k) next end (* num (fn k))))
  )
;定义通项
(define (iter n)
  (cond ((odd? n) (/ (+ n 1.0) (+ n 2.0)))
        (else (/ (+ n 2.0) (+ n 1.0)))))
(define (pai n)
  (* 4 (product iter 1 next n 1 )))
(pai 100000000)
