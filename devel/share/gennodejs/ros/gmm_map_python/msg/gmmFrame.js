// Auto-generated. Do not edit!

// (in-package gmm_map_python.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class gmmFrame {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mix_num = null;
      this.dim = null;
      this.weights = null;
      this.means = null;
      this.covariances = null;
    }
    else {
      if (initObj.hasOwnProperty('mix_num')) {
        this.mix_num = initObj.mix_num
      }
      else {
        this.mix_num = 0;
      }
      if (initObj.hasOwnProperty('dim')) {
        this.dim = initObj.dim
      }
      else {
        this.dim = 0;
      }
      if (initObj.hasOwnProperty('weights')) {
        this.weights = initObj.weights
      }
      else {
        this.weights = [];
      }
      if (initObj.hasOwnProperty('means')) {
        this.means = initObj.means
      }
      else {
        this.means = [];
      }
      if (initObj.hasOwnProperty('covariances')) {
        this.covariances = initObj.covariances
      }
      else {
        this.covariances = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type gmmFrame
    // Serialize message field [mix_num]
    bufferOffset = _serializer.int32(obj.mix_num, buffer, bufferOffset);
    // Serialize message field [dim]
    bufferOffset = _serializer.int32(obj.dim, buffer, bufferOffset);
    // Serialize message field [weights]
    bufferOffset = _arraySerializer.float64(obj.weights, buffer, bufferOffset, null);
    // Serialize message field [means]
    bufferOffset = _arraySerializer.float64(obj.means, buffer, bufferOffset, null);
    // Serialize message field [covariances]
    bufferOffset = _arraySerializer.float64(obj.covariances, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type gmmFrame
    let len;
    let data = new gmmFrame(null);
    // Deserialize message field [mix_num]
    data.mix_num = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [dim]
    data.dim = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [weights]
    data.weights = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [means]
    data.means = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [covariances]
    data.covariances = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.weights.length;
    length += 8 * object.means.length;
    length += 8 * object.covariances.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gmm_map_python/gmmFrame';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6fab534530edcfec39ab9f7b4278b442';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new gmmFrame(null);
    if (msg.mix_num !== undefined) {
      resolved.mix_num = msg.mix_num;
    }
    else {
      resolved.mix_num = 0
    }

    if (msg.dim !== undefined) {
      resolved.dim = msg.dim;
    }
    else {
      resolved.dim = 0
    }

    if (msg.weights !== undefined) {
      resolved.weights = msg.weights;
    }
    else {
      resolved.weights = []
    }

    if (msg.means !== undefined) {
      resolved.means = msg.means;
    }
    else {
      resolved.means = []
    }

    if (msg.covariances !== undefined) {
      resolved.covariances = msg.covariances;
    }
    else {
      resolved.covariances = []
    }

    return resolved;
    }
};

module.exports = gmmFrame;
