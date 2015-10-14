#lang racket
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b)
)
#|
a-plus-abs-b的作用为 a + |b|  (a加b的绝对值)
|#
