; Auto-generated. Do not edit!


(cl:in-package gmm_map_python-msg)


;//! \htmlinclude Submap.msg.html

(cl:defclass <Submap> (roslisp-msg-protocol:ros-message)
  ((index
    :reader index
    :initarg :index
    :type cl:integer
    :initform 0)
   (robot_id
    :reader robot_id
    :initarg :robot_id
    :type cl:integer
    :initform 0)
   (pose_odom
    :reader pose_odom
    :initarg :pose_odom
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (add_time
    :reader add_time
    :initarg :add_time
    :type cl:real
    :initform 0)
   (point_clouds
    :reader point_clouds
    :initarg :point_clouds
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (submap_gmm
    :reader submap_gmm
    :initarg :submap_gmm
    :type gmm_map_python-msg:gmmFrame
    :initform (cl:make-instance 'gmm_map_python-msg:gmmFrame))
   (freezed
    :reader freezed
    :initarg :freezed
    :type cl:boolean
    :initform cl:nil)
   (descriptor
    :reader descriptor
    :initarg :descriptor
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (feature_point
    :reader feature_point
    :initarg :feature_point
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (feature_gmm
    :reader feature_gmm
    :initarg :feature_gmm
    :type gmm_map_python-msg:gmmFrame
    :initform (cl:make-instance 'gmm_map_python-msg:gmmFrame)))
)

(cl:defclass Submap (<Submap>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Submap>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Submap)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gmm_map_python-msg:<Submap> is deprecated: use gmm_map_python-msg:Submap instead.")))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <Submap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gmm_map_python-msg:index-val is deprecated.  Use gmm_map_python-msg:index instead.")
  (index m))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <Submap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gmm_map_python-msg:robot_id-val is deprecated.  Use gmm_map_python-msg:robot_id instead.")
  (robot_id m))

(cl:ensure-generic-function 'pose_odom-val :lambda-list '(m))
(cl:defmethod pose_odom-val ((m <Submap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gmm_map_python-msg:pose_odom-val is deprecated.  Use gmm_map_python-msg:pose_odom instead.")
  (pose_odom m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <Submap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gmm_map_python-msg:pose-val is deprecated.  Use gmm_map_python-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'add_time-val :lambda-list '(m))
(cl:defmethod add_time-val ((m <Submap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gmm_map_python-msg:add_time-val is deprecated.  Use gmm_map_python-msg:add_time instead.")
  (add_time m))

(cl:ensure-generic-function 'point_clouds-val :lambda-list '(m))
(cl:defmethod point_clouds-val ((m <Submap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gmm_map_python-msg:point_clouds-val is deprecated.  Use gmm_map_python-msg:point_clouds instead.")
  (point_clouds m))

(cl:ensure-generic-function 'submap_gmm-val :lambda-list '(m))
(cl:defmethod submap_gmm-val ((m <Submap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gmm_map_python-msg:submap_gmm-val is deprecated.  Use gmm_map_python-msg:submap_gmm instead.")
  (submap_gmm m))

(cl:ensure-generic-function 'freezed-val :lambda-list '(m))
(cl:defmethod freezed-val ((m <Submap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gmm_map_python-msg:freezed-val is deprecated.  Use gmm_map_python-msg:freezed instead.")
  (freezed m))

(cl:ensure-generic-function 'descriptor-val :lambda-list '(m))
(cl:defmethod descriptor-val ((m <Submap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gmm_map_python-msg:descriptor-val is deprecated.  Use gmm_map_python-msg:descriptor instead.")
  (descriptor m))

(cl:ensure-generic-function 'feature_point-val :lambda-list '(m))
(cl:defmethod feature_point-val ((m <Submap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gmm_map_python-msg:feature_point-val is deprecated.  Use gmm_map_python-msg:feature_point instead.")
  (feature_point m))

(cl:ensure-generic-function 'feature_gmm-val :lambda-list '(m))
(cl:defmethod feature_gmm-val ((m <Submap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gmm_map_python-msg:feature_gmm-val is deprecated.  Use gmm_map_python-msg:feature_gmm instead.")
  (feature_gmm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Submap>) ostream)
  "Serializes a message object of type '<Submap>"
  (cl:let* ((signed (cl:slot-value msg 'index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'robot_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_odom) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'add_time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'add_time) (cl:floor (cl:slot-value msg 'add_time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'point_clouds))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'point_clouds))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'submap_gmm) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'freezed) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'descriptor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'descriptor))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'feature_point))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'feature_point))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'feature_gmm) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Submap>) istream)
  "Deserializes a message object of type '<Submap>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_odom) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'add_time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'point_clouds) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'point_clouds)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'submap_gmm) istream)
    (cl:setf (cl:slot-value msg 'freezed) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'descriptor) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'descriptor)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'feature_point) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'feature_point)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'feature_gmm) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Submap>)))
  "Returns string type for a message object of type '<Submap>"
  "gmm_map_python/Submap")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Submap)))
  "Returns string type for a message object of type 'Submap"
  "gmm_map_python/Submap")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Submap>)))
  "Returns md5sum for a message object of type '<Submap>"
  "fc8f35b643c49945d4e0dbf541c537eb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Submap)))
  "Returns md5sum for a message object of type 'Submap"
  "fc8f35b643c49945d4e0dbf541c537eb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Submap>)))
  "Returns full string definition for message of type '<Submap>"
  (cl:format cl:nil "int32 index         # key frame 在某个机器人内部的 ID~%int32 robot_id~%geometry_msgs/Pose pose_odom~%geometry_msgs/Pose pose # key frame的位置, (后端优化会不断优化这个位姿)~%time add_time~%float64[] point_clouds~%gmmFrame submap_gmm~%bool freezed #主要是判断这个地图是否不会再更新了~%float64[] descriptor~%float64[] feature_point~%gmmFrame feature_gmm~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: gmm_map_python/gmmFrame~%int32 mix_num~%int32 dim~%float64[] weights~%float64[] means~%float64[] covariances~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Submap)))
  "Returns full string definition for message of type 'Submap"
  (cl:format cl:nil "int32 index         # key frame 在某个机器人内部的 ID~%int32 robot_id~%geometry_msgs/Pose pose_odom~%geometry_msgs/Pose pose # key frame的位置, (后端优化会不断优化这个位姿)~%time add_time~%float64[] point_clouds~%gmmFrame submap_gmm~%bool freezed #主要是判断这个地图是否不会再更新了~%float64[] descriptor~%float64[] feature_point~%gmmFrame feature_gmm~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: gmm_map_python/gmmFrame~%int32 mix_num~%int32 dim~%float64[] weights~%float64[] means~%float64[] covariances~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Submap>))
  (cl:+ 0
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_odom))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'point_clouds) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'submap_gmm))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'descriptor) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'feature_point) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'feature_gmm))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Submap>))
  "Converts a ROS message object to a list"
  (cl:list 'Submap
    (cl:cons ':index (index msg))
    (cl:cons ':robot_id (robot_id msg))
    (cl:cons ':pose_odom (pose_odom msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':add_time (add_time msg))
    (cl:cons ':point_clouds (point_clouds msg))
    (cl:cons ':submap_gmm (submap_gmm msg))
    (cl:cons ':freezed (freezed msg))
    (cl:cons ':descriptor (descriptor msg))
    (cl:cons ':feature_point (feature_point msg))
    (cl:cons ':feature_gmm (feature_gmm msg))
))
