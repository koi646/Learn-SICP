#lang racket
;这个好诡异的说 = =。 虽然顺序对，但是层次有问题
(define example (list 1 2 3 4 5))
(define (reverse-error list)
  (cond ((null? (cdr list)) list)
        (else (cons (reverse-error (cdr list)) (car list)))))
(reverse-error example)
;将一个链表和另一个链表合并
(define (append  list1 list2)
  (if (null? list1) list2
      (cons (car list1) (append (cdr list1) list2))))
(define (reverse list)
  (cond ((null? (cdr list)) list)
        (else (append (reverse (cdr list)) (cons (car list) '())))))
;用递归的思想来解决
(reverse example)
(append (list 0 0 0) example)
