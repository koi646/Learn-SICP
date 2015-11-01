#lang racket
(define x (list 1 2 3))
(define y (list 4 5 6))
(append x y)
;(cons x y) cdr产生的是元素y
(cons x y)
;(list x y) cdr产生 的还是一个序对 序对的前置是指向y的地址，后续是空表
(list x y)
(newline)
(define test (list x y))
;输出((4 5 6))
(cdr test)
(define test2 (cons x y))
;输出(4,5,6)
(cdr test2)
