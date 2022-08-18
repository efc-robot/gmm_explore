;; Auto-generated. Do not edit!


(when (boundp 'submap::gmmlist)
  (if (not (find-package "SUBMAP"))
    (make-package "SUBMAP"))
  (shadow 'gmmlist (find-package "SUBMAP")))
(unless (find-package "SUBMAP::GMMLIST")
  (make-package "SUBMAP::GMMLIST"))

(in-package "ROS")
;;//! \htmlinclude gmmlist.msg.html


(defclass submap::gmmlist
  :super ros::object
  :slots (_data ))

(defmethod submap::gmmlist
  (:init
   (&key
    ((:data __data) ())
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; submap/gmm[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; submap/gmm[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; submap/gmm[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance submap::gmm :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get submap::gmmlist :md5sum-) "4c92093a5576792fccd432d7e99ff275")
(setf (get submap::gmmlist :datatype-) "submap/gmmlist")
(setf (get submap::gmmlist :definition-)
      "gmm[] data

================================================================================
MSG: submap/gmm
std_msgs/Header header
uint8 mix_num
float32[] prior
float32[] x
float32[] y
float32[] z
float32[] x_var
float32[] y_var
float32[] z_var  
geometry_msgs/Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :submap/gmmlist "4c92093a5576792fccd432d7e99ff275")


