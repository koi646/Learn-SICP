#lang racket
(define (p) (p))
(define (test x y)
  (if (= x 0)
    0 y))
(display (test 0 (p)))
#|
如果是正则序的话
(test 0 (p))
将会展开成
(if (= 0 0)
0 (p))
由于(p) 在if条件的后面 p是否执行需要先执行if判断 所以会得到结果0


如果是应用序的话：
(test 0 (p))
会先求值 (p) 然后带入test得到结果  所以p 会一直展开下去
|#