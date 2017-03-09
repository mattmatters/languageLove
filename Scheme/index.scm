;; define assigns a value to an element

;; define atom
(define a "cow")

;; define list
(define l ("poop" "pants"))


;; List primitives

;; car is the first element of a non-empty list
(car l) ; "poop"

;; cdr is a list of all elements excluding the first of a list
(cdr l) ; ("pants")

;; cons takes takes two arguments the first is an element and
;; the second is a list to put the element at the beginning of
(cons a l) ; ("cow" "poop" "pants")

;; cadr first performs cdr then car
(cadr l) ; "pants"


;; Equality and datatype checking

;; null? takes a list, returns true if empty list else false
(null? l) ; false

;; atom? takes one argument, returns true if argument is an atom
(atom? a) ; true

;; eq? takes to atom arguments and returns true if equal
(eq? a (car l)) ; false

;; lat? takes a list for argument, returns true if all elements
;; are atoms or the list is null
(define lat?
  (lambda (l)
    (cond
      ((null? l) #t)
      ((atom? (car l)) (lat? (cdr l))
      (else #f))))

(lat? l) ; true


;; or takes to arguments, if the first is true it returns true
;; otherwise it returns whatever the second one is
(or (null? l) (null? ()))) ; true
(or (null? ()) (null? ())) ; false

;; example functions (Mostly taken from The Little Schemer)

;; Remove member of list
(define rember
  (lambda (a lat)
    (cond
     ((null? lat) (quote()))
     ((eq? (car lat) a) (cdr lat))
     (else (cons (car lat)
                 (rember a (cdr lat)))))))

;; Get first member of each nested list in list
(define firsts
  (lambda (l)
    (cond
     ((null? l) l)
     (else (cons (car (car l))
                 (firsts cdr l))))))
