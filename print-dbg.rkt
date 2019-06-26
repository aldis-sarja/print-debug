#lang racket
(provide p-dbg)

(define-syntax-rule (p-dbg body)
  (let ([result body])
    (eprintf "[~a:~a] ~v = ~a~%" (syntax-source #'body) (syntax-line #'body) 'body result)
    result))

(module+ test
  (require rackunit)
  (define x 42)
  (define msg "Hello")
  (check-equal? (p-dbg x) 42)
  (check-equal? (p-dbg (+ x 58)) 100)
  (check-equal? (p-dbg msg) "Hello"))
