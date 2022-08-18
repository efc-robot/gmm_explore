;; Auto-generated. Do not edit!


(when (boundp 'gmm_map_python::Submap)
  (if (not (find-package "GMM_MAP_PYTHON"))
    (make-package "GMM_MAP_PYTHON"))
  (shadow 'Submap (find-package "GMM_MAP_PYTHON")))
(unless (find-package "GMM_MAP_PYTHON::SUBMAP")
  (make-package "GMM_MAP_PYTHON::SUBMAP"))

(in-package "ROS")
;;//! \htmlinclude Submap.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass gmm_map_python::Submap
  :super ros::object
  :slots (_index _robot_id _pose_odom _pose _add_time _point_clouds _submap_gmm _freezed _descriptor _feature_point _feature_gmm ))

(defmethod gmm_map_python::Submap
  (:init
   (&key
    ((:index __index) 0)
    ((:robot_id __robot_id) 0)
    ((:pose_odom __pose_odom) (instance geometry_msgs::Pose :init))
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:add_time __add_time) (instance ros::time :init))
    ((:point_clouds __point_clouds) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:submap_gmm __submap_gmm) (instance gmm_map_python::gmmFrame :init))
    ((:freezed __freezed) nil)
    ((:descriptor __descriptor) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:feature_point __feature_point) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:feature_gmm __feature_gmm) (instance gmm_map_python::gmmFrame :init))
    )
   (send-super :init)
   (setq _index (round __index))
   (setq _robot_id (round __robot_id))
   (setq _pose_odom __pose_odom)
   (setq _pose __pose)
   (setq _add_time __add_time)
   (setq _point_clouds __point_clouds)
   (setq _submap_gmm __submap_gmm)
   (setq _freezed __freezed)
   (setq _descriptor __descriptor)
   (setq _feature_point __feature_point)
   (setq _feature_gmm __feature_gmm)
   self)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:robot_id
   (&optional __robot_id)
   (if __robot_id (setq _robot_id __robot_id)) _robot_id)
  (:pose_odom
   (&rest __pose_odom)
   (if (keywordp (car __pose_odom))
       (send* _pose_odom __pose_odom)
     (progn
       (if __pose_odom (setq _pose_odom (car __pose_odom)))
       _pose_odom)))
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:add_time
   (&optional __add_time)
   (if __add_time (setq _add_time __add_time)) _add_time)
  (:point_clouds
   (&optional __point_clouds)
   (if __point_clouds (setq _point_clouds __point_clouds)) _point_clouds)
  (:submap_gmm
   (&rest __submap_gmm)
   (if (keywordp (car __submap_gmm))
       (send* _submap_gmm __submap_gmm)
     (progn
       (if __submap_gmm (setq _submap_gmm (car __submap_gmm)))
       _submap_gmm)))
  (:freezed
   (&optional (__freezed :null))
   (if (not (eq __freezed :null)) (setq _freezed __freezed)) _freezed)
  (:descriptor
   (&optional __descriptor)
   (if __descriptor (setq _descriptor __descriptor)) _descriptor)
  (:feature_point
   (&optional __feature_point)
   (if __feature_point (setq _feature_point __feature_point)) _feature_point)
  (:feature_gmm
   (&rest __feature_gmm)
   (if (keywordp (car __feature_gmm))
       (send* _feature_gmm __feature_gmm)
     (progn
       (if __feature_gmm (setq _feature_gmm (car __feature_gmm)))
       _feature_gmm)))
  (:serialization-length
   ()
   (+
    ;; int32 _index
    4
    ;; int32 _robot_id
    4
    ;; geometry_msgs/Pose _pose_odom
    (send _pose_odom :serialization-length)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; time _add_time
    8
    ;; float64[] _point_clouds
    (* 8    (length _point_clouds)) 4
    ;; gmm_map_python/gmmFrame _submap_gmm
    (send _submap_gmm :serialization-length)
    ;; bool _freezed
    1
    ;; float64[] _descriptor
    (* 8    (length _descriptor)) 4
    ;; float64[] _feature_point
    (* 8    (length _feature_point)) 4
    ;; gmm_map_python/gmmFrame _feature_gmm
    (send _feature_gmm :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _index
       (write-long _index s)
     ;; int32 _robot_id
       (write-long _robot_id s)
     ;; geometry_msgs/Pose _pose_odom
       (send _pose_odom :serialize s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; time _add_time
       (write-long (send _add_time :sec) s) (write-long (send _add_time :nsec) s)
     ;; float64[] _point_clouds
     (write-long (length _point_clouds) s)
     (dotimes (i (length _point_clouds))
       (sys::poke (elt _point_clouds i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; gmm_map_python/gmmFrame _submap_gmm
       (send _submap_gmm :serialize s)
     ;; bool _freezed
       (if _freezed (write-byte -1 s) (write-byte 0 s))
     ;; float64[] _descriptor
     (write-long (length _descriptor) s)
     (dotimes (i (length _descriptor))
       (sys::poke (elt _descriptor i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _feature_point
     (write-long (length _feature_point) s)
     (dotimes (i (length _feature_point))
       (sys::poke (elt _feature_point i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; gmm_map_python/gmmFrame _feature_gmm
       (send _feature_gmm :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _index
     (setq _index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _robot_id
     (setq _robot_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Pose _pose_odom
     (send _pose_odom :deserialize buf ptr-) (incf ptr- (send _pose_odom :serialization-length))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; time _add_time
     (send _add_time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _add_time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64[] _point_clouds
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _point_clouds (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _point_clouds i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; gmm_map_python/gmmFrame _submap_gmm
     (send _submap_gmm :deserialize buf ptr-) (incf ptr- (send _submap_gmm :serialization-length))
   ;; bool _freezed
     (setq _freezed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64[] _descriptor
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _descriptor (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _descriptor i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _feature_point
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _feature_point (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _feature_point i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; gmm_map_python/gmmFrame _feature_gmm
     (send _feature_gmm :deserialize buf ptr-) (incf ptr- (send _feature_gmm :serialization-length))
   ;;
   self)
  )

(setf (get gmm_map_python::Submap :md5sum-) "fc8f35b643c49945d4e0dbf541c537eb")
(setf (get gmm_map_python::Submap :datatype-) "gmm_map_python/Submap")
(setf (get gmm_map_python::Submap :definition-)
      "int32 index         # key frame 在某个机器人内部的 ID
int32 robot_id
geometry_msgs/Pose pose_odom
geometry_msgs/Pose pose # key frame的位置, (后端优化会不断优化这个位姿)
time add_time
float64[] point_clouds
gmmFrame submap_gmm
bool freezed #主要是判断这个地图是否不会再更新了
float64[] descriptor
float64[] feature_point
gmmFrame feature_gmm
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

================================================================================
MSG: gmm_map_python/gmmFrame
int32 mix_num
int32 dim
float64[] weights
float64[] means
float64[] covariances
")



(provide :gmm_map_python/Submap "fc8f35b643c49945d4e0dbf541c537eb")


