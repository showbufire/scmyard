(define (unary-map fn seq)
  (if (null? seq)
      '()
      (cons (fn (car seq)) (unary-map fn (cdr seq)))))

(define (my-map fn first-list . others)
  (if (null? first-list)
      '()
      (cons (apply fn (cons (car first-list) 
			    (unary-map car others)))
 	    (apply my-map (cons fn 
				(cons (cdr first-list) 
				      (unary-map cdr others)))))))

  