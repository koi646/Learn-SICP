#lang racket
;定义map
(define (map proc items)
  (if (null? items)
    '()
    (cons (proc (car items)) (map proc (cdr items)))))
;用map完成
(define (square-list items)
  (map (lambda (i)
               (* i i))
       items))
(square-list (list 1 2 3 4))
