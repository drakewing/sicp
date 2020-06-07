(load "/home/fires/exercises/sicp/harvey/simply.scm")

; Problem 2
(define (substitute sen old-wd new-wd)
  (cond ((empty? sen) '())
        ((equal? (first sen) old-wd) (se new-wd (substitute (bf sen) old-wd new-wd)))
        (else (se (first sen) (substitute (bf sen) old-wd new-wd)))))

(substitute '(she loves you yeah yeah yeah) 'yeah 'maybe)

; Problem 3
#|
The function g, itself, does not take any arguments. It returns a function that
takes 1 argument.
|#

; Problem 4
#|
`f`
This must be any bound value, function or otherwise.
ex) `(define f 10)`
ex) `(define f (lambda () 10))` ; This will print info about the procedure, not 
                                apply it

`(f)`
This must be a function that takes no arguments.
ex) `(define f (lambda () 10))`

`(f 3)`
f must be a procedure with 1 formal parameter.
ex) `(define f (lambda (x) x))`

`((f))`
f must be a procedure that takes no arguments. It must return a procedure that
takes no arguments.
ex) `(define f (lambda () (lambda () 10)))`

`(((f)) 3)`
f must be a procedure that takes no arguments. It must return a procedure that
takes no arguments. _That_ procedure must return a procedure that takes 1
argument.
) `(define f (lambda () (lambda () (lambda (x) x))))`
|#

; Problem 5

; ((t 1+) 0)        ; 3
; ((t (t 1+)) 0)    ; 9
; (((t t) 1+) 0)    ; 27

; Problem 6

; ((t s) 0)         ; 3
; ((t (t s)) 0)     ; 9
; (((t t) s) 0)     ; 27

; Problem 7
(define make-tester (lambda (wd) (lambda (test-wd) (equal? wd test-wd))))

((make-tester 'hal) 'hal)
((make-tester 'hal) 'cs61a)
(define sicp-author-and-astronomer? (make-tester 'gerry))
(sicp-author-and-astronomer? 'hal)
(sicp-author-and-astronomer? 'gerry)

