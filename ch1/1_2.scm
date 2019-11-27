(define (square x) (* x x))
(define (sum-of-squares x y)
  (+ (square x) (square y)))
(define (ss2 a b c)
  (cond
    ((> a b) (if (> b c)
               (sum-of-squares a b)
               (sum-of-squares a c)))
    (else (if (> a c)
            (sum-of-squares a b)
            (sum-of-squares b c)))))

(ss2 1 2 3)

