;; define assigns a value to an element

;; define atom
(define a `cow)

;; define list
(define l `(poop pants))

;; define a quick atom? implementation
(define (atom? x) (not (pair? x)))


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
      ((atom? (car l)) (lat? (cdr l)))
      (else #f))))

(lat? l) ; true


;; or takes two arguments, if the first is true it returns true
;; otherwise it returns whatever the second one is
(or (null? l) (null? ())) ; true
(or (null? ()) (null? ())) ; false

;; example functions (Mostly taken or inspired from The Little Schemer)

;; Remove member of list
(define rember
  (lambda (a lat)
    (cond
     ((null? lat) (quote()))
     ((eq? (car lat) a) (cdr lat))
     (else (cons (car lat)
                 (rember a (cdr lat)))))))

(rember `a `(b a c))

;; Get first member of each nested list in list
(define firsts
  (lambda (l)
    (cond
     ((null? l) quote())
     (else (cons (car (car l))
                 (firsts (cdr l)))))))

;; Insert new member after to the right of old member
(define insertR
  (lambda (new old lat)
    (cond
     ((null? lat) quote())
     ((eq? old (car lat))
      (cons old (cons new (cdr lat))))
     (else (cons (car lat)
                 (insertR new old (cdr lat)))))))

;; Insert new member after to the left of old member
(define insertL
  (lambda (new old lat)
    (cond
     ((null? lat) quote())
     ((eq? old (car lat))
      (cons new lat))
     (else (cons (car lat)
                 (insertL new old (cdr lat)))))))

;; Substitue old member in lat with new
(define subst
  (lambda (new old lat)
    (cond
     ((null? lat) quote())
     ((eq? old (car lat))
      (cons new (cdr lat)))
     (else (cons (car lat)
                 (insertR new old (cdr lat)))))))

;; Substitute first occurance of o1 or o2 with new
(define subst2
  (lambda (new o1 o2 lat)
    (cond
     ((null? lat) quote())
     ((or (eq? (car lat) o1) (eq? (car lat) o2))
      (cons new (cdr lat)))
     (else (cons (car lat)
                 (subst2 new o1 o2 (cdr lat)))))))

;; Insert new member to the right of all matching old members in lat
(define multiInsertR
  (lambda (new old lat)
    (cond
     ((null? lat) quote())
     ((eq? (car lat) old)
      (cons old (cons new (multiInsertR new old (cdr lat)))))
     (else (cons (car lat)
                 (multiInsertR new old (cdr lat)))))))

;; Insert new member to the left of all matching old members in lat
(define multiInsertL
  (lambda (new old lat)
    (cond
     ((null? lat) quote())
     ((eq? (car lat) old)
      (cons new (cons old (multiInsertR new old (cdr lat)))))
     (else (cons (car lat)
                 (multiInsertR new old (cdr lat)))))))

;; Substitue all occurances of old with new in lat
(define multiSubst
  (lambda (new old lat)
    (cond
     ((null? lat) quote())
     ((eq? (car lat) old)
      (cons new (multiSubst new old (cdr lat))))
     (else (cons (car lat)
                 (multiSubst new old (cdr lat)))))))
