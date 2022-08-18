// Auto-generated. Do not edit!

// (in-package gmm_map_python.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SubmapEntry = require('./SubmapEntry.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SubmapList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.submaps = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('submaps')) {
        this.submaps = initObj.submaps
      }
      else {
        this.submaps = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SubmapList
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [submaps]
    // Serialize the length for message field [submaps]
    bufferOffset = _serializer.uint32(obj.submaps.length, buffer, bufferOffset);
    obj.submaps.forEach((val) => {
      bufferOffset = SubmapEntry.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SubmapList
    let len;
    let data = new SubmapList(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [submaps]
    // Deserialize array length for message field [submaps]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.submaps = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.submaps[i] = SubmapEntry.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 69 * object.submaps.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gmm_map_python/SubmapList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '59795942fabdc58b23e3562f13acfbda';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SubmapList(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.submaps !== undefined) {
      resolved.submaps = new Array(msg.submaps.length);
      for (let i = 0; i < resolved.submaps.length; ++i) {
        resolved.submaps[i] = SubmapEntry.Resolve(msg.submaps[i]);
      }
    }
    else {
      resolved.submaps = []
    }

    return resolved;
    }
};

module.exports = SubmapList;
