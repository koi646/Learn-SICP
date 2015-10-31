#lang racket
(define (square x)
  (* x x))
(define (square-list items)
  (define (iter things answer)
    (if (null? things)
      answer
      (iter (cdr things)
            (cons (square (car things))
                          answer))))
  (iter items '()))
(square-list (list 1 2 3 4))
#|
因为这个迭代计算在递归的时候 是 (cdr things) 总是拿出最后一个。 不过用前面的reverse可以解决这个问题 把最后的输出结果反序就可以了
|#
(define (square-plus items)
  (define (iter things answer)
    (if (null? things)
      answer
      (cons )
      (iter (cdr things)
            (cons answer
                  (car things)))))
  (iter items '()))
(square-plus (list 1 2 3 4))
;这次顺序对了 但是却不是一个序对 ((((((), 1), 2), 3), 4), ) 可以用append解决这个问题
;http://sicp.readthedocs.org/en/latest/chp2/22.html 这个网址上的讲的很详细
