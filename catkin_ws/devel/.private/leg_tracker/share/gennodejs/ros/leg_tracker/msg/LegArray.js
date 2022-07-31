// Auto-generated. Do not edit!

// (in-package leg_tracker.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Leg = require('./Leg.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class LegArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.legs = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('legs')) {
        this.legs = initObj.legs
      }
      else {
        this.legs = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LegArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [legs]
    // Serialize the length for message field [legs]
    bufferOffset = _serializer.uint32(obj.legs.length, buffer, bufferOffset);
    obj.legs.forEach((val) => {
      bufferOffset = Leg.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LegArray
    let len;
    let data = new LegArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [legs]
    // Deserialize array length for message field [legs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.legs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.legs[i] = Leg.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 28 * object.legs.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'leg_tracker/LegArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9e932f47090c69cbf30f535c2ab02e32';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Array of legs 
    std_msgs/Header header
    Leg[] legs
    
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
    MSG: leg_tracker/Leg
    # Position and confidence of a leg 
    geometry_msgs/Point position
    float32 confidence
    
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LegArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.legs !== undefined) {
      resolved.legs = new Array(msg.legs.length);
      for (let i = 0; i < resolved.legs.length; ++i) {
        resolved.legs[i] = Leg.Resolve(msg.legs[i]);
      }
    }
    else {
      resolved.legs = []
    }

    return resolved;
    }
};

module.exports = LegArray;
