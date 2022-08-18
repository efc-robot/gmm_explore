; Auto-generated. Do not edit!


(cl:in-package gmm_map_python-msg)


;//! \htmlinclude SubmapList.msg.html

(cl:defclass <SubmapList> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (submaps
    :reader submaps
    :initarg :submaps
    :type (cl:vector gmm_map_python-msg:SubmapEntry)
   :initform (cl:make-array 0 :element-type 'gmm_map_python-msg:SubmapEntry :initial-element (cl:make-instance 'gmm_map_python-msg:SubmapEntry))))
)

(cl:defclass SubmapList (<SubmapList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SubmapList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SubmapList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gmm_map_python-msg:<SubmapList> is deprecated: use gmm_map_python-msg:SubmapList instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SubmapList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gmm_map_python-msg:header-val is deprecated.  Use gmm_map_python-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'submaps-val :lambda-list '(m))
(cl:defmethod submaps-val ((m <SubmapList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gmm_map_python-msg:submaps-val is deprecated.  Use gmm_map_python-msg:submaps instead.")
  (submaps m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SubmapList>) ostream)
  "Serializes a message object of type '<SubmapList>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'submaps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'submaps))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SubmapList>) istream)
  "Deserializes a message object of type '<SubmapList>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'submaps) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'submaps)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'gmm_map_python-msg:SubmapEntry))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SubmapList>)))
  "Returns string type for a message object of type '<SubmapList>"
  "gmm_map_python/SubmapList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SubmapList)))
  "Returns string type for a message object of type 'SubmapList"
  "gmm_map_python/SubmapList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SubmapList>)))
  "Returns md5sum for a message object of type '<SubmapList>"
  "59795942fabdc58b23e3562f13acfbda")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SubmapList)))
  "Returns md5sum for a message object of type 'SubmapList"
  "59795942fabdc58b23e3562f13acfbda")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SubmapList>)))
  "Returns full string definition for message of type '<SubmapList>"
  (cl:format cl:nil "std_msgs/Header header~%gmm_map_python/SubmapEntry[] submaps #返回所有的submap信息的列表~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: gmm_map_python/SubmapEntry~%#每个Submap本质上是一个key frame~%~%int32 robot_id~%int32 submap_index # key frame 在某个机器人内部的 ID~%int32 submap_version # key frame 的版本,主要是在局部轨迹内更新 key frame~%geometry_msgs/Pose pose # key frame的位置, (后端优化会不断优化这个位姿)~%bool is_frozen #主要是判断这个地图是否不会再更新了~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SubmapList)))
  "Returns full string definition for message of type 'SubmapList"
  (cl:format cl:nil "std_msgs/Header header~%gmm_map_python/SubmapEntry[] submaps #返回所有的submap信息的列表~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: gmm_map_python/SubmapEntry~%#每个Submap本质上是一个key frame~%~%int32 robot_id~%int32 submap_index # key frame 在某个机器人内部的 ID~%int32 submap_version # key frame 的版本,主要是在局部轨迹内更新 key frame~%geometry_msgs/Pose pose # key frame的位置, (后端优化会不断优化这个位姿)~%bool is_frozen #主要是判断这个地图是否不会再更新了~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SubmapList>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'submaps) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SubmapList>))
  "Converts a ROS message object to a list"
  (cl:list 'SubmapList
    (cl:cons ':header (header msg))
    (cl:cons ':submaps (submaps msg))
))
