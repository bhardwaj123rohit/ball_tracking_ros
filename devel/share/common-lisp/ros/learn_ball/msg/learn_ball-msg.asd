
(cl:in-package :asdf)

(defsystem "learn_ball-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ballCor" :depends-on ("_package_ballCor"))
    (:file "_package_ballCor" :depends-on ("_package"))
  ))