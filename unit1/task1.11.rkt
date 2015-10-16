#lang r5rs
;默认n为非负数
;递归计算
(define (f n)
  (cond ((< n 3) n)
        (else (+ (f (- n 1)) (f (- n 2)) (f (- n 3))))))
(display (f 5))
;迭代计算
(define (f_ n)
  (define (f-iter index x y z)
    (cond ((= n index) z)
          (else (f-iter (+ index 1) y z (+ x y z)))))
  (cond ((< n 3) n)
        (else (f-iter 2 0 1 2))))
(newline)
(display (f_ 5))