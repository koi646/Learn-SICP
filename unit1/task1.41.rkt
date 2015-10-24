#lang racket
;定义不动点方法
(define (inc x)
  (+ 1 x))
(define (double fn)
  (lambda (x)
          (fn (fn x))))
;result is 13
;然而这是错误的  正确答案为21
;因为scheme采用应用序
;第一个 (double double) 执行完后 返回的double函数为将传入参数的函数执行4次
;第二次执行(double double) 则为4*4=16次inc
;所以结果为16+5=21
(((double (double double)) inc) 5)
