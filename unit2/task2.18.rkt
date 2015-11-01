#lang racket
;反转一个链表
(define (reverse items)
  (define (iter x y)
    (cond ((null? x) y)
          (else (iter (cdr x) (cons (car x) y)))))
          (iter items '()))
