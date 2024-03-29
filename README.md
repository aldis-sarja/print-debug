# Debugging tool.
This is small tiny macro. Borrowed from [Rust](https://blog.rust-lang.org/2019/01/17/Rust-1.32.0.html)
Use for debug printing variables and expressions, without cluttering code evaluation.
Better looking documentation here - [Racket Documentation](https://docs.racket-lang.org/manual@print-debug/index.html)

It prints, into stderr stream, a filename (full path), line number, quoted expresion and result of expresion:
`[source-file:line-number] expresion = result-of-expresion`

## Usage
```
(require print-debug/print-dbg)
...
(p-dbg (factorial n))
```

This will make output something like that:
```
[long-path/factorial.rkt:13] '(factorial n) = 1405006117752879898543142606244511569936384000000000
```

You can put it in a middle of expresion, just like that:
```
(set! x (p-dbg (factorial n)))
```

or even that:
```
(define (factorial n)
  (cond [(zero? n) 1]
        [else (* n (p-dbg (factorial (- n 1)))])))
```

This will print helpfull information, or flood your terminal with thousand of lines. Or even more. Try it!