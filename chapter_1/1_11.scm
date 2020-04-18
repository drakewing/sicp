(define (func n)
  (if (< n 3)
    n
    (+ (func (- n 1))
       (* 2 (func (- n 2)))
       (* 3 (func (- n 3))))))

(define (func-iter n)
  (if (< n 3)
    n
    (func-iter-inner 2 1 0 (- n 3))))

(define (func-iter-inner a b c count)
  (if (= count 0)
    (+ a (* 2 b) (* 3 c))
    (func-iter-inner (+ a (* 2 b) (* 3 c)) a b (- count 1))))

;(define var 28)
;(func var)
;(func-iter var)

; Pascal's triangle
;
; This one is kind of a cheat, I had to look up someone's solution because I
; didn't understand the question.
(define (pascal row col)
  (cond ((= row 1) 1)
        ((= col 1) 1)
        ((= row col) 1)
        (else (+ (pascal (- row 1) col)
                 (pascal (- row 1) (- col 1))))))

;(pascal 5 3)

