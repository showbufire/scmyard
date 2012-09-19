(define (merge-sort seq)
  (if (< (length seq) 2)
      seq
      (let ((half (floor (/ (length seq) 2))))
	(combine (merge-sort (slice 0 half seq)) (merge-sort (slice half (- (length seq) half) seq))))))

(define (combine a b)
  (cond ((null? a) b)
	((null? b) a)
	((< (car a) (car b)) (cons (car a) (combine (cdr a) b)))
	(else (cons (car b) (combine a (cdr b))))))

(define (slice start cnt seq)
  (if (> start 0)
      (slice (- start 1) cnt (cdr seq))
      (pick-n cnt seq)))

(define (pick-n cnt seq)
  (if (> cnt 0)
      (cons (car seq) (pick-n (- cnt 1) (cdr seq)))
      '()))
  