; Auto-generated. Do not edit!


(cl:in-package gmm_map_python-msg)


;//! \htmlinclude gmmlist.msg.html

(cl:defclass <gmmlist> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector gmm_map_python-msg:gmm)
   :initform (cl:make-array 0 :element-type 'gmm_map_python-msg:gmm :initial-element (cl:make-instance 'gmm_map_python-msg:gmm))))
)

(cl:defclass gmmlist (<gmmlist>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gmmlist>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gmmlist)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gmm_map_python-msg:<gmmlist> is deprecated: use gmm_map_python-msg:gmmlist instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <gmmlist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gmm_map_python-msg:data-val is deprecated.  Use gmm_map_python-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gmmlist>) ostream)
  "Serializes a message object of type '<gmmlist>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gmmlist>) istream)
  "Deserializes a message object of type '<gmmlist>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'gmm_map_python-msg:gmm))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gmmlist>)))
  "Returns string type for a message object of type '<gmmlist>"
  "gmm_map_python/gmmlist")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gmmlist)))
  "Returns string type for a message object of type 'gmmlist"
  "gmm_map_python/gmmlist")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gmmlist>)))
  "Returns md5sum for a message object of type '<gmmlist>"
  "d72afeeabbf4ae838a844487000f2100")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gmmlist)))
  "Returns md5sum for a message object of type 'gmmlist"
  "d72afeeabbf4ae838a844487000f2100")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gmmlist>)))
  "Returns full string definition for message of type '<gmmlist>"
  (cl:format cl:nil "gmm[] data~%~%================================================================================~%MSG: gmm_map_python/gmm~%std_msgs/Header header~%int32 mix_num~%float32[] prior~%float32[] x~%float32[] y~%float32[] z~%float32[] x_var~%float32[] y_var~%float32[] z_var  ~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gmmlist)))
  "Returns full string definition for message of type 'gmmlist"
  (cl:format cl:nil "gmm[] data~%~%================================================================================~%MSG: gmm_map_python/gmm~%std_msgs/Header header~%int32 mix_num~%float32[] prior~%float32[] x~%float32[] y~%float32[] z~%float32[] x_var~%float32[] y_var~%float32[] z_var  ~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gmmlist>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gmmlist>))
  "Converts a ROS message object to a list"
  (cl:list 'gmmlist
    (cl:cons ':data (data msg))
))
