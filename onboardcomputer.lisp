(defclass onboardcomputer (computer) ()
    ((description :reader onboardcomputer-description
                  :initform "Relay information accurately without distortion or concealment.")
    )
)

(defmethod get-mission-purpose ((obc onboardcomputer))
    (computer-description obc)
    (onboardcomputer-description obc)
)

(setf obc (make-instance onboardcomputer))
