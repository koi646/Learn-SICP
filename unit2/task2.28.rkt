#lang racket
;判断前置是否为一个序对,如果是的话递归;如果不是的话将其加到结果中
;发现出现顺序问题 最后else的结果需要反转
(pair? (cdr (cdr (list 1 2))))
(define (fringe x)
  (define (iter items result)
    (cond ((null? items) result)
          ((pair? (car items)) (append (iter (car items) '()) (iter (cdr items) '())))
          (else (iter (cdr items) (reverse (cons (car items) result))))))
  (iter x '()))
(define x (list (list 1 2) (list 3 4)))
(define xx (list x x))
(define y (list 1 2 3 4))
(pair? (car x))
(fringe x)
(fringe y)
(fringe xx)
