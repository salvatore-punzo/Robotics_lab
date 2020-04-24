// Auto-generated. Do not edit!

// (in-package ros_service.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class serviceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.in1 = null;
      this.in2 = null;
    }
    else {
      if (initObj.hasOwnProperty('in1')) {
        this.in1 = initObj.in1
      }
      else {
        this.in1 = 0;
      }
      if (initObj.hasOwnProperty('in2')) {
        this.in2 = initObj.in2
      }
      else {
        this.in2 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type serviceRequest
    // Serialize message field [in1]
    bufferOffset = _serializer.int32(obj.in1, buffer, bufferOffset);
    // Serialize message field [in2]
    bufferOffset = _serializer.int32(obj.in2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type serviceRequest
    let len;
    let data = new serviceRequest(null);
    // Deserialize message field [in1]
    data.in1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [in2]
    data.in2 = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_service/serviceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9fec3aad8d6d77ac394875705430388d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 in1
    int32 in2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new serviceRequest(null);
    if (msg.in1 !== undefined) {
      resolved.in1 = msg.in1;
    }
    else {
      resolved.in1 = 0
    }

    if (msg.in2 !== undefined) {
      resolved.in2 = msg.in2;
    }
    else {
      resolved.in2 = 0
    }

    return resolved;
    }
};

class serviceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.out = null;
    }
    else {
      if (initObj.hasOwnProperty('out')) {
        this.out = initObj.out
      }
      else {
        this.out = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type serviceResponse
    // Serialize message field [out]
    bufferOffset = _arraySerializer.int32(obj.out, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type serviceResponse
    let len;
    let data = new serviceResponse(null);
    // Deserialize message field [out]
    data.out = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.out.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_service/serviceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b6f143c7fbdeafd31860d9ba817bed9d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[] out
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new serviceResponse(null);
    if (msg.out !== undefined) {
      resolved.out = msg.out;
    }
    else {
      resolved.out = []
    }

    return resolved;
    }
};

module.exports = {
  Request: serviceRequest,
  Response: serviceResponse,
  md5sum() { return '2452478e798c9612b048c043328bbde8'; },
  datatype() { return 'ros_service/service'; }
};
