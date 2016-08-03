Scheme - A Gentle Introduciton
==============================

; Basics - add some numbers etc

; check for equality of some stuff

; conditionals - if & cond

; make 'double' function or similar

; try car, cdr, cons

; make function to recursively add numbers in a list

### 1 Atoms

Atoms are single values that evaluate to themselves - 1, "Hello", etc.

1.1 Evaluate some atoms at the REPL.

1.2 What else works as a atom?  (try text without quotes, different prefixes, different number types - rational, etc.)

### 2 Lists

Lists take the form '(1 2).

2.1 Evaluate some lists at the REPL.

2.2 What happens if you miss the leading quote?

2.3 Do the items in a list have to be the same type?

### 3 Function Application

Function application takes the form (+ 1 2), with + being a function.

3.1 Try adding some numbers at the REPL.

3.2 Is adding limited to two numbers?

3.3 Try the even? function.  Does that support multiple arguments?

3.4 Calculate the following with scheme: 2 + 4 * 5 - 3 (which should equal 19).

### 4 Comparison

Using the built-in comparison functions, see if:

4.1 "hello" equals "mum"

4.2 2 equals 2

4.3 10 is greater than -5

List Functions

’(a b)                   ==> '(a b)      ; quote suspends evaluation of the list
(car ’(a b))             ==> a           ; get head of list (contents of address reg)
(cdr ’(a b))             ==> '(b)        ; get rest of list (contents of decrement reg)
(cons "one" '(2 3))      ==> ("one" 2 3) ; put element on head of list
(append ’(a b) ’(y z))   ==> '(a b y z)  ; append one list to another
(null? ’())              ==> #t          ; is the list empty?

; you will find other functions as expected - length, reverse, etc.
Naming Conventions

General names: lisp-case, e.g. child-node Predicate functions: with question mark, e.g. even? Mutator functions: with exclamation mark, e.g. set!

Defining Variables & Functions

(define x 10)
x                          ==> 10

; you *can* change a variable once set, but it's not really the Scheme way
(set! x 20) 

;; Lambda is used to generate new functions
(lambda (x) (+ x 10)                    ; an anonymous function
(define plus10 (lambda (x) (+ x 10)))   ; we've named the function now
(define (plus10 x) (+ x 10))            ; a shortcut to defining a named function
(plus10 5)                 ==> 15

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
Recursion

;; List length
(define (length a-list)
    (cond ((null? a-list) 0)
      (else (+ 1 (length (cdr a-list))))))

(length '(a b c))            ==> 3
Higher order functions

;; takes a function and applies it to every element of a list
(define (map function a-list)
    (cond ((null? a-list) '())
      (else (cons (function (car a-list)) (map function (cdr a-list))))))

(map even? '(1 2 3 4))        ==> (#f #t #f #t)
