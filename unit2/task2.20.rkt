#lang racket
(define (append  list1 list2)
  (if (null? list1) list2
      (cons (car list1) (append (cdr list1) list2))))
;这样好像出来的顺序错了.. 是(选出其中的奇数) 同理修改下就可以得到题目要求的程序
(define (same-parity . z)
  (define (iter list)
    (cond ((null? list) list)
          ((odd? (car list)) (cons (car list) (iter (cdr list))))
          (else (iter (cdr list)))))
  (iter z ))
(same-parity 1 2 3 4 5 6 7)
