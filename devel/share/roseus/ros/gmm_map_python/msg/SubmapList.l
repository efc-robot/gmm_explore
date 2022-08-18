;; Auto-generated. Do not edit!


(when (boundp 'gmm_map_python::SubmapList)
  (if (not (find-package "GMM_MAP_PYTHON"))
    (make-package "GMM_MAP_PYTHON"))
  (shadow 'SubmapList (find-package "GMM_MAP_PYTHON")))
(unless (find-package "GMM_MAP_PYTHON::SUBMAPLIST")
  (make-package "GMM_MAP_PYTHON::SUBMAPLIST"))

(in-package "ROS")
;;//! \htmlinclude SubmapList.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass gmm_map_python::SubmapList
  :super ros::object
  :slots (_header _submaps ))

(defmethod gmm_map_python::SubmapList
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:submaps __submaps) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _submaps __submaps)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:submaps
   (&rest __submaps)
   (if (keywordp (car __submaps))
       (send* _submaps __submaps)
     (progn
       (if __submaps (setq _submaps (car __submaps)))
       _submaps)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; gmm_map_python/SubmapEntry[] _submaps
    (apply #'+ (send-all _submaps :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; gmm_map_python/SubmapEntry[] _submaps
     (write-long (length _submaps) s)
     (dolist (elem _submaps)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; gmm_map_python/SubmapEntry[] _submaps
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _submaps (let (r) (dotimes (i n) (push (instance gmm_map_python::SubmapEntry :init) r)) r))
     (dolist (elem- _submaps)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get gmm_map_python::SubmapList :md5sum-) "59795942fabdc58b23e3562f13acfbda")
(setf (get gmm_map_python::SubmapList :datatype-) "gmm_map_python/SubmapList")
(setf (get gmm_map_python::SubmapList :definition-)
      "std_msgs/Header header
gmm_map_python/SubmapEntry[] submaps #返回所有的submap信息的列表

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
MSG: gmm_map_python/SubmapEntry
#每个Submap本质上是一个key frame

int32 robot_id
int32 submap_index # key frame 在某个机器人内部的 ID
int32 submap_version # key frame 的版本,主要是在局部轨迹内更新 key frame
geometry_msgs/Pose pose # key frame的位置, (后端优化会不断优化这个位姿)
bool is_frozen #主要是判断这个地图是否不会再更新了
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



(provide :gmm_map_python/SubmapList "59795942fabdc58b23e3562f13acfbda")


