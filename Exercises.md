

; Basics - add some numbers etc

; check for equality of some stuff

; conditionals - if & cond

; make 'double' function or similar

; try car, cdr, cons

; make function to recursively add numbers in a list

; make function to replace an item in a list with a different item

; make and use higher-order function (e.g. map) - try with double, also anonymous lambda

; make function to add all numbers in a tree?


; try some typical problems using scheme?  (Euler, fizzbuzz, checkout kata, etc?)


Consider the problem of turning a list consisting
of a mix between symbols and non-symbols into a
list of lists of the symbol and its following
non-symbols. That is:

Input:    ({<symbol> <non-symbol>*} ... )
Output:   ((<symbol> (<non-symbol>*)) ...)
Example:     (a 1 2 3 b 4 5 c d 8 9 e)
           -> ((a (1 2 3)) (b (4 5)) (c ()) (d (8 9)) (e ()))
           
(from https://groups.google.com/forum/#!topic/comp.lang.scheme/CaHZq4tdnF4)
