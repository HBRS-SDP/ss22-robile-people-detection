// Auto-generated. Do not edit!

// (in-package leg_tracker.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Person = require('./Person.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PersonArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.people = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('people')) {
        this.people = initObj.people
      }
      else {
        this.people = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PersonArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [people]
    // Serialize the length for message field [people]
    bufferOffset = _serializer.uint32(obj.people.length, buffer, bufferOffset);
    obj.people.forEach((val) => {
      bufferOffset = Person.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PersonArray
    let len;
    let data = new PersonArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [people]
    // Deserialize array length for message field [people]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.people = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.people[i] = Person.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 60 * object.people.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'leg_tracker/PersonArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7b54bf6148ab21083b85a27eec643002';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Array of person positions
    std_msgs/Header header
    Person[] people
    
    
    
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
    MSG: leg_tracker/Person
    # Pose of a person
    geometry_msgs/Pose pose
    uint32 id
    
    
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
    const resolved = new PersonArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.people !== undefined) {
      resolved.people = new Array(msg.people.length);
      for (let i = 0; i < resolved.people.length; ++i) {
        resolved.people[i] = Person.Resolve(msg.people[i]);
      }
    }
    else {
      resolved.people = []
    }

    return resolved;
    }
};

module.exports = PersonArray;
