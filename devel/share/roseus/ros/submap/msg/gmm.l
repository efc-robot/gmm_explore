;; Auto-generated. Do not edit!


(when (boundp 'submap::gmm)
  (if (not (find-package "SUBMAP"))
    (make-package "SUBMAP"))
  (shadow 'gmm (find-package "SUBMAP")))
(unless (find-package "SUBMAP::GMM")
  (make-package "SUBMAP::GMM"))

(in-package "ROS")
;;//! \htmlinclude gmm.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass submap::gmm
  :super ros::object
  :slots (_header _mix_num _prior _x _y _z _x_var _y_var _z_var _pose ))

(defmethod submap::gmm
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:mix_num __mix_num) 0)
    ((:prior __prior) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:x __x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:y __y) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:z __z) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:x_var __x_var) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:y_var __y_var) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:z_var __z_var) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _mix_num (round __mix_num))
   (setq _prior __prior)
   (setq _x __x)
   (setq _y __y)
   (setq _z __z)
   (setq _x_var __x_var)
   (setq _y_var __y_var)
   (setq _z_var __z_var)
   (setq _pose __pose)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:mix_num
   (&optional __mix_num)
   (if __mix_num (setq _mix_num __mix_num)) _mix_num)
  (:prior
   (&optional __prior)
   (if __prior (setq _prior __prior)) _prior)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:x_var
   (&optional __x_var)
   (if __x_var (setq _x_var __x_var)) _x_var)
  (:y_var
   (&optional __y_var)
   (if __y_var (setq _y_var __y_var)) _y_var)
  (:z_var
   (&optional __z_var)
   (if __z_var (setq _z_var __z_var)) _z_var)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _mix_num
    1
    ;; float32[] _prior
    (* 4    (length _prior)) 4
    ;; float32[] _x
    (* 4    (length _x)) 4
    ;; float32[] _y
    (* 4    (length _y)) 4
    ;; float32[] _z
    (* 4    (length _z)) 4
    ;; float32[] _x_var
    (* 4    (length _x_var)) 4
    ;; float32[] _y_var
    (* 4    (length _y_var)) 4
    ;; float32[] _z_var
    (* 4    (length _z_var)) 4
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _mix_num
       (write-byte _mix_num s)
     ;; float32[] _prior
     (write-long (length _prior) s)
     (dotimes (i (length _prior))
       (sys::poke (elt _prior i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _x
     (write-long (length _x) s)
     (dotimes (i (length _x))
       (sys::poke (elt _x i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _y
     (write-long (length _y) s)
     (dotimes (i (length _y))
       (sys::poke (elt _y i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _z
     (write-long (length _z) s)
     (dotimes (i (length _z))
       (sys::poke (elt _z i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _x_var
     (write-long (length _x_var) s)
     (dotimes (i (length _x_var))
       (sys::poke (elt _x_var i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _y_var
     (write-long (length _y_var) s)
     (dotimes (i (length _y_var))
       (sys::poke (elt _y_var i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _z_var
     (write-long (length _z_var) s)
     (dotimes (i (length _z_var))
       (sys::poke (elt _z_var i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _mix_num
     (setq _mix_num (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32[] _prior
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _prior (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _prior i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _x (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _x i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _y (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _y i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _z
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _z (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _z i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _x_var
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _x_var (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _x_var i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _y_var
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _y_var (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _y_var i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _z_var
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _z_var (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _z_var i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get submap::gmm :md5sum-) "b38bee77952a1a686f11267cd2bdf476")
(setf (get submap::gmm :datatype-) "submap/gmm")
(setf (get submap::gmm :definition-)
      "std_msgs/Header header
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



(provide :submap/gmm "b38bee77952a1a686f11267cd2bdf476")


