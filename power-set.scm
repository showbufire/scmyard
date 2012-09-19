(define (power-set seq)
  (if (null? seq)
      '(())
      (let ((t (power-set (cdr seq))))
	(append t 
		(map (lambda (set) (cons (car seq) set)) t)))))