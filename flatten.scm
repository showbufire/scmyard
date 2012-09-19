(define (my-flatten seq)
     (if (list? seq)
	 (apply append (map my-flatten seq))
	 (list seq)))