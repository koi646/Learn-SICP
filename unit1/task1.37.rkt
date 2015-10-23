#lang racket
;递归计算
(define (cont-frace n d k)
  (define (iter n d i)
    (if (= i k) (/ (n i) (d i))
        (/ (n i) (+ (d i) (iter n d (+ i 1))))))
  (if (< k 1) (display "参数必须大于等于1")
      (iter n d 1)))
(cont-frace (lambda (i) 1.0) (lambda (i) 1.0) 300)
(newline)
;迭代计算
(define (cont-frace-iter n d k)
  (define (iter n d i result)
    (cond ((= i 0) result)
          ((= i k) (iter n d (- i 1) (/ (n i) (d i))))
          (else(iter n d (- i 1) (/ (n i) (+ (d i) result))))))
  (if (< k 1) (display "参数必须大于等于1")
      (iter n d k 0)))
(cont-frace-iter (lambda (i) 1.0) (lambda (i) 1.0) 100)
