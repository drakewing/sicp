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







