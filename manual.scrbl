#lang scribble/manual
@(require (for-label racket))
 
@title{print-debug}

Print variables and expressions for debugging purposes.
Borrowed from Rust @url["https://blog.rust-lang.org/2019/01/17/Rust-1.32.0.html"]
@racket[p-dbg] accepts only one item, let it be atom, or expression.
@defform*[((p-dbg body))]{
@racket[body] can be variable or expression. You can insert @racket[p-dbg]
anywhere in the code (OK, almost anywhere) without cluttering code evaluation.
@racket[p-dbg] returns what @racket[body] should return.
}

@section{Usage}
@racketblock[(require print-debug/print-dbg)
....
(factorial (p-dbg n))]
or
@racketblock[(p-dbg (factorial n))]
or
@racketblock[(set! some-big-number (p-dbg (factorial n)))]
This will print in stderr a file name (with full path), line number,
expression and result of expression.
@verbatim{
[long-path/factorial.rkt:13] '(factorial n) = 1405006117752879898543142606244511569936384000000000
}
Try to guess the number n!
