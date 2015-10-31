#lang racket
(define x1 (list 1 3 (list 5 7) 9))
(define x2 (list (list 7)))
(define x3 '(1 ( 3 ( 5 ( 7)))))
(car (cdr (car (cdr (cdr x1)))))
(car (car x2))
(car (cdr (car (cdr (car (cdr (car (cdr (car (cdr (car (cdr '(1 (2 (3 (4 (5 (6 7))))))))))))))))))
