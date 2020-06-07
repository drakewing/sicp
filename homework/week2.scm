(load "/home/fires/exercises/sicp/harvey/simply.scm")

; Problem 1

; SICP 1.31(a)
(define (product term a next b)
  (if (> a b) 
    1
    (* (term a) (product term (next a) next b))))

(define identity (lambda (x) x))
(define inc (lambda (x) (+ x 1)))

(product identity 1 inc 3)
(product identity 1 inc 4)
(product identity 1 inc 5)
(product identity 1 inc 6)

; Factorial in terms of product (assuming positive input)
(define factorial (lambda (n) (product identity 1 inc n)))
(factorial 10)

; Approximation to pi (assuming positive input)
(define (pi-willis k)
  (let ((num (lambda (k) 
                 (if (= (modulo k 2) 0)
                   (+ 2 k)
                   (+ 2 (- k 1)))))
        (den (lambda (k)
                 (if (= (modulo k 2) 0)
                   (+ 3 (- k 2))
                   (+ 3 (- k 1))))))
    (/ (num k) (den k))))

; Approximate pi over k steps
(define approx-pi (lambda (k) (* (product pi-willis 1 inc k) 4)))
(approx-pi 4)

