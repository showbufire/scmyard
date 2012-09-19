(define (k-subset seq k)
  (if (= k 0) 
      '(())
      (if (null? seq)
	  '()
	  (append (map (lambda (set) (cons (car seq) set)) (k-subset (cdr seq) (- k 1)))
		  (k-subset (cdr seq) k)))))
	  