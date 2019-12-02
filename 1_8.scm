; Wrapper so you don't have to pass in guess to find "delta" on the first go.
(define (cube-root-iter guess x)
  (cube-root-iter-inner guess x (* guess 2)))

(define (cube-root-iter-inner guess x old-guess)
  (if (good-enough? guess x (- old-guess guess))
    guess
    (cube-root-iter-inner (improve guess x)
                          x
                          guess)))

(define (good-enough? guess x delta)
  (< (abs (/ delta guess)) 0.01))

(define (improve guess x)
  (/ 
    (+ 
      (/ x (expt guess 2)) 
      (* 2 guess))
    3))

(cube-root-iter 135 6416332)


