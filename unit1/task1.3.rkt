#lang racket
(define (maxSum x y z)
  (cond
    ((and (< x y) (< x z)) (display (+ y z)))
    ((and (< y x) (< y z)) (display (+ x z)))
    ((and (< z x) (< z y)) (display (+ x y)))
  )
)
