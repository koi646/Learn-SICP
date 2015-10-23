#lang racket
;迭代计算
(define (cont-frace-iter n d k)
  (define (iter n d i result)
    (cond ((= i 0) result)
          ((= i k) (iter n d (- i 1) (/ (n i) (d i))))
          (else(iter n d (- i 1) (/ (n i) (+ (d i) result))))))
  (if (< k 1) (display "参数必须大于等于1")
      (iter n d k 0)))
(define (e k)
  (+ 2 (cont-frace-iter
        (lambda (i) 1.0)
        (lambda (i)
                (if (= (remainder (+ 1 i) 3) 0) (* 2 (/ (+ 1 i) 3))
                    1)) k)))
(e 100)
