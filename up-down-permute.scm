(define (up-down-permute num-list)
  (if (null? num-list)
      '(())
      (up-down-permute-with-prev < > num-list (+ 1 (apply max num-list)))))

(define (up-down-permute-with-prev cmp next-cmp num-list prev)
  (if (null? num-list)
      '(())
      (apply append 
	     (map (lambda (x)
		    (map (lambda (perm) (cons x perm))
			 (up-down-permute-with-prev  next-cmp cmp (remove x num-list) x)))
		  (filter (lambda (x) (cmp x prev)) num-list)))))

	 
