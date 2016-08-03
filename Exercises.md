Exercises
=========

This page contains some more challenging things to achieve using Scheme, in increasing levels of diffculty.  Do whichever you like.

### 1 Something Familiar - FizzBuzz

write a function which take a positive integer.

If that integer is divisible by 3, return "Fizz".
If it is divisible by 5, return "Buzz.
If it is divisible by 3 and 5, return "FizzBuzz".
Otherwise, return the number.  (As text or a number, whichever you like).

e.g.

    (fizz-buzz 2) ==> "2"
    (fizz-buzz 9) ==> "Fizz
    (fizz-buzz 10) ==> "Buzz
    (fizz-buzz 15) ==> "FizzBuzz

### 2 Something Listy - Adding a Tree

Write a function which takes a list representing a tree or graph, whose nodes are numbers.  Return the sum of the numbers.

e.g.

    (add-graph '((4 (3 6) 6)(2 (3 4)))) ==> 28

### 3 Something off the Internet - Grouping by Symbols

Write a function that turns a list consisting of a mix between symbols and non-symbols into a list of lists of the symbol and its following non-symbols. That is:

Input:    ({symbol non-symbol*} ... )
Output:   ((symbol (non-symbol*)) ...)
e.g:     

    (group-symbols '(a 1 2 3 b 4 5 c d 8 9 e)) ==> ((a (1 2 3)) (b (4 5)) (c ()) (d (8 9)) (e ()))
           
(from https://groups.google.com/forum/#!topic/comp.lang.scheme/CaHZq4tdnF4)
