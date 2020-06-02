(load "/home/fires/exercises/sicp/harvey/simply.scm")

; Problem 1 solved in a different file

; Problem 2
(define (square-sentence a)
  (if (empty? a) 
    (se)
    (se (square (first a)) (square-sentence (bf a)))))

(square-sentence '())
(square-sentence '(4))
(square-sentence '(1 2 3 4))

; Problem 3
(define (switch sen)
  (cond ((= (count sen) 0) '())
        (else (se (swap-wd (first sen) 'i) (switch-inner (bf sen))))))

(define (switch-inner sen)
  (cond ((= (count sen) 0) '())
        (else (se (swap-wd (first sen) 'me) (switch-inner (bf sen))))))

(define (swap-wd wd me)
  (cond ((or (equal? wd 'i) (equal? wd 'me)) 'you)
        ((equal? wd 'you) me)
        (else wd)))

(switch '(You told me that I should wake you up))

; Problem 4
(define (ordered? sen)
  (cond ((< (count sen) 2) #t)
        ((= (count sen) 2) (< (first sen) (last sen)))
        (else (and (< (first sen) (item 2 sen)) (ordered? (bf sen))))))

(ordered? '(1 2 3 4))
(ordered? '(4 3 2 1))

; Problem 5
(define (ends-e sen)
  (if (empty? sen)
    '()
    (se (ends-e? (first sen)) (ends-e (bf sen)))))

(define (ends-e? wd)
  (if (equal? (last wd) 'e)
    wd
    '()))

(ends-e '(please put the salami above the blue elephant))

; Problem 6
(define x 15)
(if (or (= x 15) (= foo problem))
  '(short circuited)
  "won't get here")

(if (and (> x 15) (= foo problem))
  "won't get here"
  '(short circuited))

#|
It is useful to have 'or' and 'and' as special forms because, as I show above,
you are likely to encounter errors involving undefined variables. This allows
you to make progressively wider assumptions about the data being tested without
having to make sure that each test is applicable _every_ time.
|#

