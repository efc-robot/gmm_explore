;; Auto-generated. Do not edit!


(when (boundp 'gmm_map_python::gmmFrame)
  (if (not (find-package "GMM_MAP_PYTHON"))
    (make-package "GMM_MAP_PYTHON"))
  (shadow 'gmmFrame (find-package "GMM_MAP_PYTHON")))
(unless (find-package "GMM_MAP_PYTHON::GMMFRAME")
  (make-package "GMM_MAP_PYTHON::GMMFRAME"))

(in-package "ROS")
;;//! \htmlinclude gmmFrame.msg.html


(defclass gmm_map_python::gmmFrame
  :super ros::object
  :slots (_mix_num _dim _weights _means _covariances ))

(defmethod gmm_map_python::gmmFrame
  (:init
   (&key
    ((:mix_num __mix_num) 0)
    ((:dim __dim) 0)
    ((:weights __weights) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:means __means) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:covariances __covariances) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _mix_num (round __mix_num))
   (setq _dim (round __dim))
   (setq _weights __weights)
   (setq _means __means)
   (setq _covariances __covariances)
   self)
  (:mix_num
   (&optional __mix_num)
   (if __mix_num (setq _mix_num __mix_num)) _mix_num)
  (:dim
   (&optional __dim)
   (if __dim (setq _dim __dim)) _dim)
  (:weights
   (&optional __weights)
   (if __weights (setq _weights __weights)) _weights)
  (:means
   (&optional __means)
   (if __means (setq _means __means)) _means)
  (:covariances
   (&optional __covariances)
   (if __covariances (setq _covariances __covariances)) _covariances)
  (:serialization-length
   ()
   (+
    ;; int32 _mix_num
    4
    ;; int32 _dim
    4
    ;; float64[] _weights
    (* 8    (length _weights)) 4
    ;; float64[] _means
    (* 8    (length _means)) 4
    ;; float64[] _covariances
    (* 8    (length _covariances)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _mix_num
       (write-long _mix_num s)
     ;; int32 _dim
       (write-long _dim s)
     ;; float64[] _weights
     (write-long (length _weights) s)
     (dotimes (i (length _weights))
       (sys::poke (elt _weights i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _means
     (write-long (length _means) s)
     (dotimes (i (length _means))
       (sys::poke (elt _means i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _covariances
     (write-long (length _covariances) s)
     (dotimes (i (length _covariances))
       (sys::poke (elt _covariances i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _mix_num
     (setq _mix_num (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _dim
     (setq _dim (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64[] _weights
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _weights (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _weights i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _means
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _means (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _means i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _covariances
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _covariances (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _covariances i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get gmm_map_python::gmmFrame :md5sum-) "6fab534530edcfec39ab9f7b4278b442")
(setf (get gmm_map_python::gmmFrame :datatype-) "gmm_map_python/gmmFrame")
(setf (get gmm_map_python::gmmFrame :definition-)
      "int32 mix_num
int32 dim
float64[] weights
float64[] means
float64[] covariances
")



(provide :gmm_map_python/gmmFrame "6fab534530edcfec39ab9f7b4278b442")


