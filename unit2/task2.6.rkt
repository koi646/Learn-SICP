#lang racket
;工具函数
(define (cube x)
  (* x x x))
#|
丘奇计数
丘奇整数是一个高阶函数以单一参数函数f为参数，返回另一个单一参数的函数。其中返回的函数是参数f函数的n次幂
--引自wiki百科
|#

(define zero (lambda (f) (lambda (x) x)))
(define (add-1 n)
  (lambda (f) (lambda (x) (f ((n f) x)))))
#| one应该为(add-1 zero)
(add-1 (lambda (f) (lambda (x) x)))
展开带入为
(lambda (f)
        (lambda (x)
                (f (((lambda (z) (lambda (i) i)) f) x))))
归约后
(lambda (f)
        (lambda (x)
                (f x)))
|#
;f执行一次
(define one (lambda (f)
                    (lambda (x)
                            (f x))))
#|two为 (add-1 one)
(add-1 one)
展开为
(lambda (f)
        (lambda (x)
                (f (((lambda (k)
                             (lambda (z)
                                     (k z))) f) (x)))))
归约后为
(lambda (f)
        (lambda (x)
                (f (f x))))
|#
(define two (lambda (f)
                    (lambda (x)
                            (f (f x)))))
((zero cube) 2)
((one cube) 2)
((two cube) 2)
;丘奇计数 掉闸了！
(define add (lambda (n m)
                    (lambda (fn)
                            (lambda (x)
                                    ((n f) ((m f) x))))))
