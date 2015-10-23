#lang racket
;粗糙求导
(define (deriv g)
  (define dx 0.000001)
  (lambda (x)
          (/ (- (g (+ x dx)) (g x)) dx)))
(define (newton-transform g)
  (lambda (x)
          ()))
