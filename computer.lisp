(defclass computer ()
    ((active :accessor computer-active
             :initform t)
     (name :reader computer-name
           :initarg :name)
     (description :reader computer-description
                  :initform "Keep the discovery of the Monolith TMA-1 a secret.")
    )
)

(defun make-computer (name)
    (make-instance 'computer :name name)
)

(defmethod get-status ((c computer))
    (if (computer-active c)
        (computer-name c)
        (computer-active c) ; it's nil
    )
)

(defmethod get-date ((c computer))
    "26-11-2015 01:35:00"
)

(defmethod shutdown ((c computer))
    (setf (computer-active c) nil)
)

(defmethod to-string ((c computer))
    (computer-name c)
)

(setf c (make-computer 'HAL))
(get-status c)
(get-date c)
(to-string c)
