#lang racket
;引入上题的点的定义和边的定义等函数
;定义点
(define (make-point x y) (cons x y))
(define (x-point point) (car point))
(define (y-point point) (cdr point))
;打印点的坐标
(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))
;定义线段
(define (make-segment start end) (cons start end))
(define (start-segment segment) (car segment))
(define (end-segment segment) (cdr segment))
;返回中间点
(define (midpoint-segment segment)
  (define (midpoint p1 p2)
    (define (average a b)
      (/ (+ a b) 2))
    (make-point (average (x-point p1) (x-point p2)) (average (y-point p1) (y-point p2))))
  (midpoint (start-segment segment) (end-segment segment)))

;工具函数
;绝对值
(define (abs x)
  (cond ((>= x 0)x)
        (- 0 x)))
;平方
(define (square x)
  (* x x))

;求平方根
(define (good? x y expect)
  (define (abs x)
    (if (>= x 0) x
      (- x)))
  (< (abs (- 1 (/ x y))) expect))
;迭代
(define (sqrt-iter before_guess after_guess x)
  (if (good? before_guess after_guess  0.001)
    after_guess
    (sqrt-iter after_guess (improve after_guess x) x)))
;进一步求得更加接近的猜测值
(define (improve guess x)
  (newline)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))
(define (sqrt x)
  (sqrt-iter 0 1.0 x))

#|
和定义一个直角三角形同样的道理
用两种方式定义矩形
1. 一个直角点 和两个锐角点
2. 1个中心点,两个以此点为起始中心的线段
可以加入判断 两条边是否平行 || 点的位置判断 来添加更加平凡的条件
|#
;返回两个点的x坐标差
(define (point2-x point1 point2)
  (- (x-point point1) (y-point point1)))
;返回两个点的y坐标差
(define (point2-y point1 point2)
  (- (y-point point1) (y-point point2)))
;两点之间距离
(define (distance point1 point2)
  (sqrt (+ (square (point2-x point1 point2)) (square (point2-y point1 point2)))))

;1直角点和两个锐角点表示法
(define (make-rectangle-by-point point1 point2 point3)
  )
;周长
(define (C ractangle)

  )
;面积
(define (S rectangle)
  )
;此题有问题.按照网上的接法,表示方式是用底边和左边来确定 这样在平面中应该用具体的坐标表示,并没有所谓的上下左右
