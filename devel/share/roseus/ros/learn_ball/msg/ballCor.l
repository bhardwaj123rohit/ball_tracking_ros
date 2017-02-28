;; Auto-generated. Do not edit!


(when (boundp 'learn_ball::ballCor)
  (if (not (find-package "LEARN_BALL"))
    (make-package "LEARN_BALL"))
  (shadow 'ballCor (find-package "LEARN_BALL")))
(unless (find-package "LEARN_BALL::BALLCOR")
  (make-package "LEARN_BALL::BALLCOR"))

(in-package "ROS")
;;//! \htmlinclude ballCor.msg.html


(defclass learn_ball::ballCor
  :super ros::object
  :slots (_heading _color _x _y _radius _upperH _upperS _upperV _lowerH _lowerS _lowerV ))

(defmethod learn_ball::ballCor
  (:init
   (&key
    ((:heading __heading) "")
    ((:color __color) "")
    ((:x __x) 0)
    ((:y __y) 0)
    ((:radius __radius) 0)
    ((:upperH __upperH) 0)
    ((:upperS __upperS) 0)
    ((:upperV __upperV) 0)
    ((:lowerH __lowerH) 0)
    ((:lowerS __lowerS) 0)
    ((:lowerV __lowerV) 0)
    )
   (send-super :init)
   (setq _heading (string __heading))
   (setq _color (string __color))
   (setq _x (round __x))
   (setq _y (round __y))
   (setq _radius (round __radius))
   (setq _upperH (round __upperH))
   (setq _upperS (round __upperS))
   (setq _upperV (round __upperV))
   (setq _lowerH (round __lowerH))
   (setq _lowerS (round __lowerS))
   (setq _lowerV (round __lowerV))
   self)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:color
   (&optional __color)
   (if __color (setq _color __color)) _color)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:upperH
   (&optional __upperH)
   (if __upperH (setq _upperH __upperH)) _upperH)
  (:upperS
   (&optional __upperS)
   (if __upperS (setq _upperS __upperS)) _upperS)
  (:upperV
   (&optional __upperV)
   (if __upperV (setq _upperV __upperV)) _upperV)
  (:lowerH
   (&optional __lowerH)
   (if __lowerH (setq _lowerH __lowerH)) _lowerH)
  (:lowerS
   (&optional __lowerS)
   (if __lowerS (setq _lowerS __lowerS)) _lowerS)
  (:lowerV
   (&optional __lowerV)
   (if __lowerV (setq _lowerV __lowerV)) _lowerV)
  (:serialization-length
   ()
   (+
    ;; string _heading
    4 (length _heading)
    ;; string _color
    4 (length _color)
    ;; int64 _x
    8
    ;; int64 _y
    8
    ;; int64 _radius
    8
    ;; int64 _upperH
    8
    ;; int64 _upperS
    8
    ;; int64 _upperV
    8
    ;; int64 _lowerH
    8
    ;; int64 _lowerS
    8
    ;; int64 _lowerV
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _heading
       (write-long (length _heading) s) (princ _heading s)
     ;; string _color
       (write-long (length _color) s) (princ _color s)
     ;; int64 _x
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _x (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _x) (= (length (_x . bv)) 2)) ;; bignum
              (write-long (ash (elt (_x . bv) 0) 0) s)
              (write-long (ash (elt (_x . bv) 1) -1) s))
             ((and (class _x) (= (length (_x . bv)) 1)) ;; big1
              (write-long (elt (_x . bv) 0) s)
              (write-long (if (>= _x 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _x s)(write-long (if (>= _x 0) 0 #xffffffff) s)))
     ;; int64 _y
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _y (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _y) (= (length (_y . bv)) 2)) ;; bignum
              (write-long (ash (elt (_y . bv) 0) 0) s)
              (write-long (ash (elt (_y . bv) 1) -1) s))
             ((and (class _y) (= (length (_y . bv)) 1)) ;; big1
              (write-long (elt (_y . bv) 0) s)
              (write-long (if (>= _y 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _y s)(write-long (if (>= _y 0) 0 #xffffffff) s)))
     ;; int64 _radius
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _radius (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _radius) (= (length (_radius . bv)) 2)) ;; bignum
              (write-long (ash (elt (_radius . bv) 0) 0) s)
              (write-long (ash (elt (_radius . bv) 1) -1) s))
             ((and (class _radius) (= (length (_radius . bv)) 1)) ;; big1
              (write-long (elt (_radius . bv) 0) s)
              (write-long (if (>= _radius 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _radius s)(write-long (if (>= _radius 0) 0 #xffffffff) s)))
     ;; int64 _upperH
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _upperH (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _upperH) (= (length (_upperH . bv)) 2)) ;; bignum
              (write-long (ash (elt (_upperH . bv) 0) 0) s)
              (write-long (ash (elt (_upperH . bv) 1) -1) s))
             ((and (class _upperH) (= (length (_upperH . bv)) 1)) ;; big1
              (write-long (elt (_upperH . bv) 0) s)
              (write-long (if (>= _upperH 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _upperH s)(write-long (if (>= _upperH 0) 0 #xffffffff) s)))
     ;; int64 _upperS
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _upperS (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _upperS) (= (length (_upperS . bv)) 2)) ;; bignum
              (write-long (ash (elt (_upperS . bv) 0) 0) s)
              (write-long (ash (elt (_upperS . bv) 1) -1) s))
             ((and (class _upperS) (= (length (_upperS . bv)) 1)) ;; big1
              (write-long (elt (_upperS . bv) 0) s)
              (write-long (if (>= _upperS 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _upperS s)(write-long (if (>= _upperS 0) 0 #xffffffff) s)))
     ;; int64 _upperV
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _upperV (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _upperV) (= (length (_upperV . bv)) 2)) ;; bignum
              (write-long (ash (elt (_upperV . bv) 0) 0) s)
              (write-long (ash (elt (_upperV . bv) 1) -1) s))
             ((and (class _upperV) (= (length (_upperV . bv)) 1)) ;; big1
              (write-long (elt (_upperV . bv) 0) s)
              (write-long (if (>= _upperV 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _upperV s)(write-long (if (>= _upperV 0) 0 #xffffffff) s)))
     ;; int64 _lowerH
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _lowerH (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _lowerH) (= (length (_lowerH . bv)) 2)) ;; bignum
              (write-long (ash (elt (_lowerH . bv) 0) 0) s)
              (write-long (ash (elt (_lowerH . bv) 1) -1) s))
             ((and (class _lowerH) (= (length (_lowerH . bv)) 1)) ;; big1
              (write-long (elt (_lowerH . bv) 0) s)
              (write-long (if (>= _lowerH 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _lowerH s)(write-long (if (>= _lowerH 0) 0 #xffffffff) s)))
     ;; int64 _lowerS
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _lowerS (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _lowerS) (= (length (_lowerS . bv)) 2)) ;; bignum
              (write-long (ash (elt (_lowerS . bv) 0) 0) s)
              (write-long (ash (elt (_lowerS . bv) 1) -1) s))
             ((and (class _lowerS) (= (length (_lowerS . bv)) 1)) ;; big1
              (write-long (elt (_lowerS . bv) 0) s)
              (write-long (if (>= _lowerS 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _lowerS s)(write-long (if (>= _lowerS 0) 0 #xffffffff) s)))
     ;; int64 _lowerV
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _lowerV (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _lowerV) (= (length (_lowerV . bv)) 2)) ;; bignum
              (write-long (ash (elt (_lowerV . bv) 0) 0) s)
              (write-long (ash (elt (_lowerV . bv) 1) -1) s))
             ((and (class _lowerV) (= (length (_lowerV . bv)) 1)) ;; big1
              (write-long (elt (_lowerV . bv) 0) s)
              (write-long (if (>= _lowerV 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _lowerV s)(write-long (if (>= _lowerV 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _heading
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _heading (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _color
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _color (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int64 _x
#+(or :alpha :irix6 :x86_64)
      (setf _x (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _x (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _y
#+(or :alpha :irix6 :x86_64)
      (setf _y (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _y (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _radius
#+(or :alpha :irix6 :x86_64)
      (setf _radius (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _radius (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _upperH
#+(or :alpha :irix6 :x86_64)
      (setf _upperH (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _upperH (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _upperS
#+(or :alpha :irix6 :x86_64)
      (setf _upperS (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _upperS (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _upperV
#+(or :alpha :irix6 :x86_64)
      (setf _upperV (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _upperV (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _lowerH
#+(or :alpha :irix6 :x86_64)
      (setf _lowerH (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _lowerH (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _lowerS
#+(or :alpha :irix6 :x86_64)
      (setf _lowerS (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _lowerS (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _lowerV
#+(or :alpha :irix6 :x86_64)
      (setf _lowerV (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _lowerV (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get learn_ball::ballCor :md5sum-) "a81fb488530784a24d84e3f7199f24f6")
(setf (get learn_ball::ballCor :datatype-) "learn_ball/ballCor")
(setf (get learn_ball::ballCor :definition-)
      "string heading
string color
int64 x
int64 y
int64 radius
int64 upperH
int64 upperS
int64 upperV
int64 lowerH
int64 lowerS
int64 lowerV
")



(provide :learn_ball/ballCor "a81fb488530784a24d84e3f7199f24f6")


