// Auto-generated. Do not edit!

// (in-package submap.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class gmm {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.mix_num = null;
      this.prior = null;
      this.x = null;
      this.y = null;
      this.z = null;
      this.x_var = null;
      this.y_var = null;
      this.z_var = null;
      this.pose = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('mix_num')) {
        this.mix_num = initObj.mix_num
      }
      else {
        this.mix_num = 0;
      }
      if (initObj.hasOwnProperty('prior')) {
        this.prior = initObj.prior
      }
      else {
        this.prior = [];
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = [];
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = [];
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = [];
      }
      if (initObj.hasOwnProperty('x_var')) {
        this.x_var = initObj.x_var
      }
      else {
        this.x_var = [];
      }
      if (initObj.hasOwnProperty('y_var')) {
        this.y_var = initObj.y_var
      }
      else {
        this.y_var = [];
      }
      if (initObj.hasOwnProperty('z_var')) {
        this.z_var = initObj.z_var
      }
      else {
        this.z_var = [];
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type gmm
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [mix_num]
    bufferOffset = _serializer.uint8(obj.mix_num, buffer, bufferOffset);
    // Serialize message field [prior]
    bufferOffset = _arraySerializer.float32(obj.prior, buffer, bufferOffset, null);
    // Serialize message field [x]
    bufferOffset = _arraySerializer.float32(obj.x, buffer, bufferOffset, null);
    // Serialize message field [y]
    bufferOffset = _arraySerializer.float32(obj.y, buffer, bufferOffset, null);
    // Serialize message field [z]
    bufferOffset = _arraySerializer.float32(obj.z, buffer, bufferOffset, null);
    // Serialize message field [x_var]
    bufferOffset = _arraySerializer.float32(obj.x_var, buffer, bufferOffset, null);
    // Serialize message field [y_var]
    bufferOffset = _arraySerializer.float32(obj.y_var, buffer, bufferOffset, null);
    // Serialize message field [z_var]
    bufferOffset = _arraySerializer.float32(obj.z_var, buffer, bufferOffset, null);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type gmm
    let len;
    let data = new gmm(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [mix_num]
    data.mix_num = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [prior]
    data.prior = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [x]
    data.x = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [y]
    data.y = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [z]
    data.z = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [x_var]
    data.x_var = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [y_var]
    data.y_var = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [z_var]
    data.z_var = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.prior.length;
    length += 4 * object.x.length;
    length += 4 * object.y.length;
    length += 4 * object.z.length;
    length += 4 * object.x_var.length;
    length += 4 * object.y_var.length;
    length += 4 * object.z_var.length;
    return length + 85;
  }

  static datatype() {
    // Returns string type for a message object
    return 'submap/gmm';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b38bee77952a1a686f11267cd2bdf476';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    uint8 mix_num
    float32[] prior
    float32[] x
    float32[] y
    float32[] z
    float32[] x_var
    float32[] y_var
    float32[] z_var  
    geometry_msgs/Pose pose
    
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
    const resolved = new gmm(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.mix_num !== undefined) {
      resolved.mix_num = msg.mix_num;
    }
    else {
      resolved.mix_num = 0
    }

    if (msg.prior !== undefined) {
      resolved.prior = msg.prior;
    }
    else {
      resolved.prior = []
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = []
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = []
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = []
    }

    if (msg.x_var !== undefined) {
      resolved.x_var = msg.x_var;
    }
    else {
      resolved.x_var = []
    }

    if (msg.y_var !== undefined) {
      resolved.y_var = msg.y_var;
    }
    else {
      resolved.y_var = []
    }

    if (msg.z_var !== undefined) {
      resolved.z_var = msg.z_var;
    }
    else {
      resolved.z_var = []
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

module.exports = gmm;
