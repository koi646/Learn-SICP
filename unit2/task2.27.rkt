#lang racket
;反转一个链表
(define (reverse items)
  (define (iter x y)
    (cond ((null? x) y)
          (else (iter (cdr x) (cons (car x) y)))))
          (iter items '()))
(reverse '(1 2 3))

(define (deep-reverse items)
  (define (iter x y)
    (cond ((null? x) y)
          ((pair? (car x)) (iter (cdr x) (cons (iter (car x) '()) y)))
          (else (iter (cdr x) (cons (car x) y)))))
          (iter items '()))
(deep-reverse (list (list 1 (list 2 5)) (list 3 4)))
