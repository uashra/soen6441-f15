(defclass stack ()
    ((items :accessor stack-items
            :initform '())
     (size :accessor stack-size
           :initform 0))
)

(defmethod push-item ((s stack) elt)
    (setf (stack-items s) (cons elt (stack-items s)))
    (setf (stack-size s) (+ 1 (stack-size s)))
)

(defmethod pop-item ((s stack))
    (let ((top-elt (car (stack-items s))))
        (setf (stack-items s) (cdr (stack-items s)))
        (setf (stack-size s) (- (stack-size s) 1))
        top-elt
    )
)

(setf s (make-instance 'stack))
(push-item s 1)
(push-item s 2)
(push-item s 3)
(stack-items s)
(pop-item s)
