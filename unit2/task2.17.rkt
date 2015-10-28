#lang racket
(define (last-pair list)
  (define (iter n)
    (if (null? (cdr n)) (car n)
      (iter (cdr n))))
  (iter list))
(last-pair (list 0 1 1 2 3 5 8))
