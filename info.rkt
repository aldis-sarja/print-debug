#lang info
(define scribblings '(("manual.scrbl" ())))
(define name "print-debug")
(define primary-file "print-dbg.rkt")
(define categories '(devtools))
(define deps '("base"))
(define build-deps '("racket-doc"
                     "rackunit-lib"
                     "scribble-lib"))
