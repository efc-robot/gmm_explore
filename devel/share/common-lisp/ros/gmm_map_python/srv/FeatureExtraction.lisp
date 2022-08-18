; Auto-generated. Do not edit!


(cl:in-package gmm_map_python-srv)


;//! \htmlinclude FeatureExtraction-request.msg.html

(cl:defclass <FeatureExtraction-request> (roslisp-msg-protocol:ros-message)
  ((input_cloud
    :reader input_cloud
    :initarg :input_cloud
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2)))
)

(cl:defclass FeatureExtraction-request (<FeatureExtraction-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FeatureExtraction-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FeatureExtraction-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gmm_map_python-srv:<FeatureExtraction-request> is deprecated: use gmm_map_python-srv:FeatureExtraction-request instead.")))

(cl:ensure-generic-function 'input_cloud-val :lambda-list '(m))
(cl:defmethod input_cloud-val ((m <FeatureExtraction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gmm_map_python-srv:input_cloud-val is deprecated.  Use gmm_map_python-srv:input_cloud instead.")
  (input_cloud m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FeatureExtraction-request>) ostream)
  "Serializes a message object of type '<FeatureExtraction-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'input_cloud) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FeatureExtraction-request>) istream)
  "Deserializes a message object of type '<FeatureExtraction-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'input_cloud) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FeatureExtraction-request>)))
  "Returns string type for a service object of type '<FeatureExtraction-request>"
  "gmm_map_python/FeatureExtractionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FeatureExtraction-request)))
  "Returns string type for a service object of type 'FeatureExtraction-request"
  "gmm_map_python/FeatureExtractionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FeatureExtraction-request>)))
  "Returns md5sum for a message object of type '<FeatureExtraction-request>"
  "31cd19eee6b183891282c4389a5aa49f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FeatureExtraction-request)))
  "Returns md5sum for a message object of type 'FeatureExtraction-request"
  "31cd19eee6b183891282c4389a5aa49f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FeatureExtraction-request>)))
  "Returns full string definition for message of type '<FeatureExtraction-request>"
  (cl:format cl:nil "sensor_msgs/PointCloud2 input_cloud~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FeatureExtraction-request)))
  "Returns full string definition for message of type 'FeatureExtraction-request"
  (cl:format cl:nil "sensor_msgs/PointCloud2 input_cloud~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FeatureExtraction-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'input_cloud))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FeatureExtraction-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FeatureExtraction-request
    (cl:cons ':input_cloud (input_cloud msg))
))
;//! \htmlinclude FeatureExtraction-response.msg.html

(cl:defclass <FeatureExtraction-response> (roslisp-msg-protocol:ros-message)
  ((output_cloud
    :reader output_cloud
    :initarg :output_cloud
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2)))
)

(cl:defclass FeatureExtraction-response (<FeatureExtraction-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FeatureExtraction-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FeatureExtraction-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gmm_map_python-srv:<FeatureExtraction-response> is deprecated: use gmm_map_python-srv:FeatureExtraction-response instead.")))

(cl:ensure-generic-function 'output_cloud-val :lambda-list '(m))
(cl:defmethod output_cloud-val ((m <FeatureExtraction-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gmm_map_python-srv:output_cloud-val is deprecated.  Use gmm_map_python-srv:output_cloud instead.")
  (output_cloud m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FeatureExtraction-response>) ostream)
  "Serializes a message object of type '<FeatureExtraction-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'output_cloud) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FeatureExtraction-response>) istream)
  "Deserializes a message object of type '<FeatureExtraction-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'output_cloud) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FeatureExtraction-response>)))
  "Returns string type for a service object of type '<FeatureExtraction-response>"
  "gmm_map_python/FeatureExtractionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FeatureExtraction-response)))
  "Returns string type for a service object of type 'FeatureExtraction-response"
  "gmm_map_python/FeatureExtractionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FeatureExtraction-response>)))
  "Returns md5sum for a message object of type '<FeatureExtraction-response>"
  "31cd19eee6b183891282c4389a5aa49f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FeatureExtraction-response)))
  "Returns md5sum for a message object of type 'FeatureExtraction-response"
  "31cd19eee6b183891282c4389a5aa49f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FeatureExtraction-response>)))
  "Returns full string definition for message of type '<FeatureExtraction-response>"
  (cl:format cl:nil "sensor_msgs/PointCloud2 output_cloud~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FeatureExtraction-response)))
  "Returns full string definition for message of type 'FeatureExtraction-response"
  (cl:format cl:nil "sensor_msgs/PointCloud2 output_cloud~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FeatureExtraction-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'output_cloud))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FeatureExtraction-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FeatureExtraction-response
    (cl:cons ':output_cloud (output_cloud msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FeatureExtraction)))
  'FeatureExtraction-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FeatureExtraction)))
  'FeatureExtraction-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FeatureExtraction)))
  "Returns string type for a service object of type '<FeatureExtraction>"
  "gmm_map_python/FeatureExtraction")