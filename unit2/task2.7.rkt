#lang racket
(define (div-interval a b) (cons b))
(define (upper-bound div-interval) (cdr div-interval))
(define (lower-bound div-interval) (car div-interval))
