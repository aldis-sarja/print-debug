#lang racket
(provide p-dbg)

(define-syntax-rule (p-dbg body)
  (let ([result body])
    (eprintf "[~a:~a] ~v = ~a~%" (syntax-source #'body) (syntax-line #'body) 'body result)
    result))
