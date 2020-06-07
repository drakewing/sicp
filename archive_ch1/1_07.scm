(define (sqrt-iter guess x)
  (if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))

; Could hide this in a wrapper so the user doesn't have to supply the initial
; old-guess.
(define (new-sqrt-iter guess x old-guess)
  (if (new-good-enough? guess x (- old-guess guess))
          guess
          (new-sqrt-iter (improve guess x)
                     x
                     guess)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (new-good-enough? guess x delta)
  (if (and (< (abs (/ delta guess)) 0.01) (not (= delta 0)))
    #t
    (< (abs (- (square guess) x)) 0.001)))

(sqrt-iter 0.0015 0.00015)
(sqrt-iter 0.001 0.001)

(new-sqrt-iter 0.0015 0.00015 0.0015)
(new-sqrt-iter 0.001 0.001 0.001)
(new-sqrt-iter 14431353153151.0 135134135135135243.0 14431.0)
;(sqrt-iter 14431353153151.0 135134135135135243.0)

