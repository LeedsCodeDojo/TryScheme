Scheme Quick Reference
======================

### Atoms

    -3      ; integer literal
    4.3     ; floating point literal
    3/4     ; rational literal
    #t      ; boolean literal, true
    #f      ; boolean literal, false
    "hello" ; string literal
    'winter ; symbol

    ;; There are several other types available

### Lists

    ’(3 4)             ; a two element list
    ’((4 3) 3)         ; lists can be nested
    ’()                ; empty list
    ’("hi" 43 ("joe")) ; lists can be heterogeneous

**Note**: the quote ' prevents the expression being evaluated - without it, the first argument is assumed to be a function.

### Function Application

    (+ 1 2 3)                   ==> 6
    (string-append "hi " "mum") ==> "hi mum"
    ((if (> 1 2) + -) 4 3)      ==> 1        ; first element evaluates to a function

### Comparison Functions

    (= 2 3)            ==> #f ; are all the integer operands equal?
    (eqv? "abs" "abs") ==> #t ; are all the operands equal?
    (< 2 3)            ==> #t ; less than (also >, <=, >=, etc.)
    (or #f #t)         ==> #t ; or (also not, and, etc.)
    (integer? 2)       ==> #t ; are all the operands integers?

### List Functions

    ’(a b)                   ==> '(a b)      ; quote suspends evaluation of the list
    (car ’(a b))             ==> a           ; get head of list (contents of address reg)
    (cdr ’(a b))             ==> '(b)        ; get rest of list (contents of decrement reg)
    (cons "one" '(2 3))      ==> ("one" 2 3) ; put element on head of list
    (append ’(a b) ’(y z))   ==> '(a b y z)  ; append one list to another
    (null? ’())              ==> #t          ; is the list empty?

    ; you will find other functions as expected - length, reverse, etc.

### Naming Conventions

General names: lisp-case, e.g. child-node
Predicate functions: with question mark, e.g. even?
Mutator functions: with exclamation mark, e.g. set!

### Defining Variables & Functions

    (define x 10)
    x                          ==> 10

    ; you *can* change a variable once set, but it's not realy the Scheme way
    (set! x 20) 
    x                          ==> 20

    ;; Lambda is used to generate new functions
    (lambda (x) (+ x 10)                    ; an anonymous function
    (define plus10 (lambda (x) (+ x 10)))   ; we've named the function now
    (define (plus10 x) (+ x 10))            ; a shortcut to defining a named function
    (plus10 5) ==> 15

    ;; Cond is a general conditional - returns the value associated with the first true expression
    (cond 
      ((eq? 'foo 'bar) 'hello)
      ((= 10 20) 'goodbye)
      (else 'sorry))            ==> sorry   ; uses else value if others aren't true

    ;; Let is used to declare/use temporary variables within the scope of the let statement
    (let
      ((x 10)
       (y 20))
      (+ x y))                  ==> 30
  
### Recursion

    ;; List length
    (define (length a-list)
        (cond ((null? a-list) 0)
	      (else (+ 1 (length (cdr a-list))))))
	  
    (length '(a b c))            ==> 3

### Higher order functions

    ;; takes a function and applies it to every element of a list
    (define (map function a-list)
        (cond ((null? a-list) '())
	      (else (cons (function (car a-list)) (map function (cdr a-list))))))

    (map even? '(1 2 3 4))        ==> (#f #t #f #t)
