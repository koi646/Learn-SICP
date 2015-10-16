#lang r5rs
;求某一列的杨辉三角
#|
1
1 1
1 2 1
1 3 3 1
1 4 6 4 1
1 5 10 10 1
可以看出以右为x正轴 向下为y正轴 
位置为(x,y)的数的大小为(x-1,y-1)+(x,y-1)
|#
(define (pa n x y)
  (define (point x y)
    (cond ((= x 1) 1)
          ((= y x) 1)
          ((or (< x 0) (< y 0)) 0)
          (else (+ (point (- x 1) (- y 1)) (point x (- y 1))))))
  (display (point x y))
  (cond ((> x 1) (pa n (- x 1) y))))
(define (pascal n)
  (pa n n n))
(pascal 5)

