// Auto-generated. Do not edit!

// (in-package gmm_map_python.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class SubmapEntry {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_id = null;
      this.submap_index = null;
      this.submap_version = null;
      this.pose = null;
      this.is_frozen = null;
    }
    else {
      if (initObj.hasOwnProperty('robot_id')) {
        this.robot_id = initObj.robot_id
      }
      else {
        this.robot_id = 0;
      }
      if (initObj.hasOwnProperty('submap_index')) {
        this.submap_index = initObj.submap_index
      }
      else {
        this.submap_index = 0;
      }
      if (initObj.hasOwnProperty('submap_version')) {
        this.submap_version = initObj.submap_version
      }
      else {
        this.submap_version = 0;
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('is_frozen')) {
        this.is_frozen = initObj.is_frozen
      }
      else {
        this.is_frozen = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SubmapEntry
    // Serialize message field [robot_id]
    bufferOffset = _serializer.int32(obj.robot_id, buffer, bufferOffset);
    // Serialize message field [submap_index]
    bufferOffset = _serializer.int32(obj.submap_index, buffer, bufferOffset);
    // Serialize message field [submap_version]
    bufferOffset = _serializer.int32(obj.submap_version, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [is_frozen]
    bufferOffset = _serializer.bool(obj.is_frozen, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SubmapEntry
    let len;
    let data = new SubmapEntry(null);
    // Deserialize message field [robot_id]
    data.robot_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [submap_index]
    data.submap_index = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [submap_version]
    data.submap_version = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_frozen]
    data.is_frozen = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 69;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gmm_map_python/SubmapEntry';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '79abe0d217345ac763691defe282e07d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new SubmapEntry(null);
    if (msg.robot_id !== undefined) {
      resolved.robot_id = msg.robot_id;
    }
    else {
      resolved.robot_id = 0
    }

    if (msg.submap_index !== undefined) {
      resolved.submap_index = msg.submap_index;
    }
    else {
      resolved.submap_index = 0
    }

    if (msg.submap_version !== undefined) {
      resolved.submap_version = msg.submap_version;
    }
    else {
      resolved.submap_version = 0
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    if (msg.is_frozen !== undefined) {
      resolved.is_frozen = msg.is_frozen;
    }
    else {
      resolved.is_frozen = false
    }

    return resolved;
    }
};

module.exports = SubmapEntry;
