#lang racket
;猜测 提升

;工具函数 abs
(define (abs x)
  (cond ((> x 0) x)
        (else (- 0 x))))
(define (iterative-improve close-enough? improve)
        (define (try guess)
            (let ((next (improve guess)))
                (if (close-enough? guess next)
                    next
                    (try next))))
        try)
;定义sqrt
(define (sqrt x)
  ((lambda (guess deviation)
  ((iterative-improve (lambda (guess next)
                             (< (abs (- 1 (/ next guess))) deviation))
                     (lambda (guess)
                             (/ (+ guess (/ x guess)) 2.0))) guess)) 1.0 0.001))
(sqrt 10)
(newline)
(define (fixed-point f first-guess)
  ((lambda (guess deviation)
  ((iterative-improve (lambda (guess next)
                             (< (abs (- 1 (/ next guess))) deviation))
                     (lambda (guess)
                             (f guess))) first-guess)) 1.0 0.001))
(fixed-point cos 1.0)
