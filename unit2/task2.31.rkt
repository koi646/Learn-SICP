#lang racket
(define (square x)
  (* x x))
(define (tree-map fn tree)
    (map (lambda (item)
                 (cond ((null? item) '())
                       ((pair? item) (tree-map fn item))
                       (else (fn item)))) tree))
(define (square-tree tree)
  (tree-map square tree))
(square-tree (list 1
                    (list 2
                          (list 3 4) 5)))
