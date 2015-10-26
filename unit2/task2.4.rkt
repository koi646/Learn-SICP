#lang racket
;闭包保存变量 可以用来模拟python的元组  task2.4.js 用js来实现了一遍
(define (cons x y)
  (lambda (m) (m x y)))
(define (car z)
  (z (lambda (p q) p)))
(car (cons 2 3))
(define (cdr z)
  (z (lambda (p q) q)))
(newline)
(cdr (cons 2 3))
