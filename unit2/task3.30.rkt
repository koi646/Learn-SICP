#lang racket
(define (square x)
  (* x x))
;map递归实现
(define (square-tree1 list1)
    (map (lambda (item)
                 (cond ((null? item) '())
                       ((pair? item) (square-tree1 item))
                       (else (square item)))) list1))
(square-tree1 (list 1
                    (list 2
                          (list 3 4) 5)))
;不是map递归实现
(define (square-tree2 list2)
  ;其实可以很猥琐的在这里面定义一个map 然后按照上面的方式来实现,但是想想算了 作者肯定不是这样想的
  ;还可以用前面写的suqare-list来进行递归实现
  (define (square-tree list result)
    )
  )
