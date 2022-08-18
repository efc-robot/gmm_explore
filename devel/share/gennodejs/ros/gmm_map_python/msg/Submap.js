// Auto-generated. Do not edit!

// (in-package gmm_map_python.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let gmmFrame = require('./gmmFrame.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Submap {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.index = null;
      this.robot_id = null;
      this.pose_odom = null;
      this.pose = null;
      this.add_time = null;
      this.point_clouds = null;
      this.submap_gmm = null;
      this.freezed = null;
      this.descriptor = null;
      this.feature_point = null;
      this.feature_gmm = null;
    }
    else {
      if (initObj.hasOwnProperty('index')) {
        this.index = initObj.index
      }
      else {
        this.index = 0;
      }
      if (initObj.hasOwnProperty('robot_id')) {
        this.robot_id = initObj.robot_id
      }
      else {
        this.robot_id = 0;
      }
      if (initObj.hasOwnProperty('pose_odom')) {
        this.pose_odom = initObj.pose_odom
      }
      else {
        this.pose_odom = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('add_time')) {
        this.add_time = initObj.add_time
      }
      else {
        this.add_time = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('point_clouds')) {
        this.point_clouds = initObj.point_clouds
      }
      else {
        this.point_clouds = [];
      }
      if (initObj.hasOwnProperty('submap_gmm')) {
        this.submap_gmm = initObj.submap_gmm
      }
      else {
        this.submap_gmm = new gmmFrame();
      }
      if (initObj.hasOwnProperty('freezed')) {
        this.freezed = initObj.freezed
      }
      else {
        this.freezed = false;
      }
      if (initObj.hasOwnProperty('descriptor')) {
        this.descriptor = initObj.descriptor
      }
      else {
        this.descriptor = [];
      }
      if (initObj.hasOwnProperty('feature_point')) {
        this.feature_point = initObj.feature_point
      }
      else {
        this.feature_point = [];
      }
      if (initObj.hasOwnProperty('feature_gmm')) {
        this.feature_gmm = initObj.feature_gmm
      }
      else {
        this.feature_gmm = new gmmFrame();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Submap
    // Serialize message field [index]
    bufferOffset = _serializer.int32(obj.index, buffer, bufferOffset);
    // Serialize message field [robot_id]
    bufferOffset = _serializer.int32(obj.robot_id, buffer, bufferOffset);
    // Serialize message field [pose_odom]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose_odom, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [add_time]
    bufferOffset = _serializer.time(obj.add_time, buffer, bufferOffset);
    // Serialize message field [point_clouds]
    bufferOffset = _arraySerializer.float64(obj.point_clouds, buffer, bufferOffset, null);
    // Serialize message field [submap_gmm]
    bufferOffset = gmmFrame.serialize(obj.submap_gmm, buffer, bufferOffset);
    // Serialize message field [freezed]
    bufferOffset = _serializer.bool(obj.freezed, buffer, bufferOffset);
    // Serialize message field [descriptor]
    bufferOffset = _arraySerializer.float64(obj.descriptor, buffer, bufferOffset, null);
    // Serialize message field [feature_point]
    bufferOffset = _arraySerializer.float64(obj.feature_point, buffer, bufferOffset, null);
    // Serialize message field [feature_gmm]
    bufferOffset = gmmFrame.serialize(obj.feature_gmm, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Submap
    let len;
    let data = new Submap(null);
    // Deserialize message field [index]
    data.index = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [robot_id]
    data.robot_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pose_odom]
    data.pose_odom = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [add_time]
    data.add_time = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [point_clouds]
    data.point_clouds = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [submap_gmm]
    data.submap_gmm = gmmFrame.deserialize(buffer, bufferOffset);
    // Deserialize message field [freezed]
    data.freezed = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [descriptor]
    data.descriptor = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [feature_point]
    data.feature_point = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [feature_gmm]
    data.feature_gmm = gmmFrame.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.point_clouds.length;
    length += gmmFrame.getMessageSize(object.submap_gmm);
    length += 8 * object.descriptor.length;
    length += 8 * object.feature_point.length;
    length += gmmFrame.getMessageSize(object.feature_gmm);
    return length + 141;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gmm_map_python/Submap';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fc8f35b643c49945d4e0dbf541c537eb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 index         # key frame 在某个机器人内部的 ID
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Submap(null);
    if (msg.index !== undefined) {
      resolved.index = msg.index;
    }
    else {
      resolved.index = 0
    }

    if (msg.robot_id !== undefined) {
      resolved.robot_id = msg.robot_id;
    }
    else {
      resolved.robot_id = 0
    }

    if (msg.pose_odom !== undefined) {
      resolved.pose_odom = geometry_msgs.msg.Pose.Resolve(msg.pose_odom)
    }
    else {
      resolved.pose_odom = new geometry_msgs.msg.Pose()
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    if (msg.add_time !== undefined) {
      resolved.add_time = msg.add_time;
    }
    else {
      resolved.add_time = {secs: 0, nsecs: 0}
    }

    if (msg.point_clouds !== undefined) {
      resolved.point_clouds = msg.point_clouds;
    }
    else {
      resolved.point_clouds = []
    }

    if (msg.submap_gmm !== undefined) {
      resolved.submap_gmm = gmmFrame.Resolve(msg.submap_gmm)
    }
    else {
      resolved.submap_gmm = new gmmFrame()
    }

    if (msg.freezed !== undefined) {
      resolved.freezed = msg.freezed;
    }
    else {
      resolved.freezed = false
    }

    if (msg.descriptor !== undefined) {
      resolved.descriptor = msg.descriptor;
    }
    else {
      resolved.descriptor = []
    }

    if (msg.feature_point !== undefined) {
      resolved.feature_point = msg.feature_point;
    }
    else {
      resolved.feature_point = []
    }

    if (msg.feature_gmm !== undefined) {
      resolved.feature_gmm = gmmFrame.Resolve(msg.feature_gmm)
    }
    else {
      resolved.feature_gmm = new gmmFrame()
    }

    return resolved;
    }
};

module.exports = Submap;
