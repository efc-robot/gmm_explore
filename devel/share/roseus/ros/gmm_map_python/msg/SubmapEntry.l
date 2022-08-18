;; Auto-generated. Do not edit!


(when (boundp 'gmm_map_python::SubmapEntry)
  (if (not (find-package "GMM_MAP_PYTHON"))
    (make-package "GMM_MAP_PYTHON"))
  (shadow 'SubmapEntry (find-package "GMM_MAP_PYTHON")))
(unless (find-package "GMM_MAP_PYTHON::SUBMAPENTRY")
  (make-package "GMM_MAP_PYTHON::SUBMAPENTRY"))

(in-package "ROS")
;;//! \htmlinclude SubmapEntry.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass gmm_map_python::SubmapEntry
  :super ros::object
  :slots (_robot_id _submap_index _submap_version _pose _is_frozen ))

(defmethod gmm_map_python::SubmapEntry
  (:init
   (&key
    ((:robot_id __robot_id) 0)
    ((:submap_index __submap_index) 0)
    ((:submap_version __submap_version) 0)
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:is_frozen __is_frozen) nil)
    )
   (send-super :init)
   (setq _robot_id (round __robot_id))
   (setq _submap_index (round __submap_index))
   (setq _submap_version (round __submap_version))
   (setq _pose __pose)
   (setq _is_frozen __is_frozen)
   self)
  (:robot_id
   (&optional __robot_id)
   (if __robot_id (setq _robot_id __robot_id)) _robot_id)
  (:submap_index
   (&optional __submap_index)
   (if __submap_index (setq _submap_index __submap_index)) _submap_index)
  (:submap_version
   (&optional __submap_version)
   (if __submap_version (setq _submap_version __submap_version)) _submap_version)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:is_frozen
   (&optional (__is_frozen :null))
   (if (not (eq __is_frozen :null)) (setq _is_frozen __is_frozen)) _is_frozen)
  (:serialization-length
   ()
   (+
    ;; int32 _robot_id
    4
    ;; int32 _submap_index
    4
    ;; int32 _submap_version
    4
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; bool _is_frozen
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _robot_id
       (write-long _robot_id s)
     ;; int32 _submap_index
       (write-long _submap_index s)
     ;; int32 _submap_version
       (write-long _submap_version s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; bool _is_frozen
       (if _is_frozen (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _robot_id
     (setq _robot_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _submap_index
     (setq _submap_index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _submap_version
     (setq _submap_version (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; bool _is_frozen
     (setq _is_frozen (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get gmm_map_python::SubmapEntry :md5sum-) "79abe0d217345ac763691defe282e07d")
(setf (get gmm_map_python::SubmapEntry :datatype-) "gmm_map_python/SubmapEntry")
(setf (get gmm_map_python::SubmapEntry :definition-)
      "#每个Submap本质上是一个key frame

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



(provide :gmm_map_python/SubmapEntry "79abe0d217345ac763691defe282e07d")


