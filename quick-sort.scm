(define (quick-sort seq)
  (if (< (length seq) 2)
      seq
      (let ((pivot (car seq)))
	(let ((less-half (filter (lambda (x) (<= x pivot)) (cdr seq)))
	      (greater-half (filter (lambda (x) (> x pivot)) (cdr seq))))
	  (append (quick-sort less-half) (list pivot) (quick-sort greater-half))))))
