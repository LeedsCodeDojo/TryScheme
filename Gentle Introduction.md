Scheme - A Gentle Introduciton
==============================

This set of exercises aims to guide you through the basics of coding in Scheme.  Feel free to skip ahead.

### 1 Atoms

Atoms are single values that evaluate to themselves - 1, "Hello", etc.

1.1 Evaluate some atoms at the REPL.

1.2 What else works as a atom?  (try text without quotes, rational numbers, etc.)

### 2 Lists

Lists take the form '(1 2).

2.1 Evaluate some lists at the REPL.

2.2 What happens if you miss the leading quote?

2.3 Do the items in a list have to be the same type?

### 3 Function Application

Function application takes the form (+ 1 2), with + being a function.

3.1 Try adding some numbers at the REPL.

3.2 Is adding limited to two numbers?

3.3 Try the odd? function.  Does that support multiple arguments?

3.4 Calculate the following with scheme: 2 + 4 * 5 - 3 (which should equal 19).

3.5 what's the biggest number Scheme will handle?  (expt, the exponent (power) function, can be useful here).

### 4 Comparison

Using the built-in comparison functions, see if:

4.1 "hello" equals "mum"

4.2 2 equals 2

### 5 Lists

The main functions for working with lists are car, cdr and cons.

5.1 What is the car of '(1 2 3)?

5.2 What is the cdr of '(1 2 3)?

5.3 What is the cdr of '(1)?

5.4 Cay you find the car of an empty list? '()

5.5 Extend the list '(2 3 4) by consing a 1 onto the front

5.6 Build the list '(1 2 3) from scratch using cons.  Hint: You will need to start with an empty list, '()

### 6 Variables

Variables can be defined like this: (define x 10)

6.1 Define two variables, x and y, and multiply them together.

### 7 Functions

(See [Quick Reference](https://github.com/LeedsCodeDojo/TryScheme/blob/master/SchemeQuickReference.md) for examples)

7.1 Define a function 'double' that multiplies an argument by two, using the (define (lambda .. syntax

7.2 Define you own 'even?' function that returns #t if the argument is even.  Hint: You might need the modulo function.

### 8 Conditionals

(See [Quick Reference](https://github.com/LeedsCodeDojo/TryScheme/blob/master/SchemeQuickReference.md) for examples)

8.1 Write an expression using the 'if' statement which evaluates to "yes" if 1=1, otherwise "no"

8.2 Write a num->text function which makes use of the 'cond' statement to convert a passed numeric argument  between 1 and 5 to its textual equivalent (e.g. (num->text 2) ==> "two").  If it is not a number between 1 and 5, it should evaluate to "error".

### 9 Recursion

9.1 Write a recursive function that adds a list of numbers, e.g.
    (add '(1 2 3)) ==> 6

9.2 Write a recursive function that replaces an item in a list with an alternative, e.g.
    (replace "kiss" "x" '("lots" "of" "love" "kiss" "kiss" "kiss") ==> '("lots" "of" "love" "x" "x" "x")

### 10 Higher order functions

10.1 Write a filter function that uses a predicate to keep only items of a list which match it.
    e.g. (filter even? '(1 2 3 4))        ==> '(2 4)
    
10.2 Try using it with your even? function, and with an anonymous lambda.
