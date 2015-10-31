#lang racket
(define (for-each iter items)
  (cond ((null? items) )
        (else (iter (car items))
              (for-each iter (cdr items)))))
(for-each (lambda (i) (newline) (display i)) (list 1 2 3))
(list 1)
