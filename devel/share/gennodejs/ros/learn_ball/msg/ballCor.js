// Auto-generated. Do not edit!

// (in-package learn_ball.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------

class ballCor {
  constructor() {
    this.heading = '';
    this.color = '';
    this.x = 0;
    this.y = 0;
    this.radius = 0;
    this.upperH = 0;
    this.upperS = 0;
    this.upperV = 0;
    this.lowerH = 0;
    this.lowerS = 0;
    this.lowerV = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type ballCor
    // Serialize message field [heading]
    bufferInfo = _serializer.string(obj.heading, bufferInfo);
    // Serialize message field [color]
    bufferInfo = _serializer.string(obj.color, bufferInfo);
    // Serialize message field [x]
    bufferInfo = _serializer.int64(obj.x, bufferInfo);
    // Serialize message field [y]
    bufferInfo = _serializer.int64(obj.y, bufferInfo);
    // Serialize message field [radius]
    bufferInfo = _serializer.int64(obj.radius, bufferInfo);
    // Serialize message field [upperH]
    bufferInfo = _serializer.int64(obj.upperH, bufferInfo);
    // Serialize message field [upperS]
    bufferInfo = _serializer.int64(obj.upperS, bufferInfo);
    // Serialize message field [upperV]
    bufferInfo = _serializer.int64(obj.upperV, bufferInfo);
    // Serialize message field [lowerH]
    bufferInfo = _serializer.int64(obj.lowerH, bufferInfo);
    // Serialize message field [lowerS]
    bufferInfo = _serializer.int64(obj.lowerS, bufferInfo);
    // Serialize message field [lowerV]
    bufferInfo = _serializer.int64(obj.lowerV, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type ballCor
    let tmp;
    let len;
    let data = new ballCor();
    // Deserialize message field [heading]
    tmp = _deserializer.string(buffer);
    data.heading = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [color]
    tmp = _deserializer.string(buffer);
    data.color = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [x]
    tmp = _deserializer.int64(buffer);
    data.x = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [y]
    tmp = _deserializer.int64(buffer);
    data.y = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [radius]
    tmp = _deserializer.int64(buffer);
    data.radius = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [upperH]
    tmp = _deserializer.int64(buffer);
    data.upperH = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [upperS]
    tmp = _deserializer.int64(buffer);
    data.upperS = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [upperV]
    tmp = _deserializer.int64(buffer);
    data.upperV = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [lowerH]
    tmp = _deserializer.int64(buffer);
    data.lowerH = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [lowerS]
    tmp = _deserializer.int64(buffer);
    data.lowerS = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [lowerV]
    tmp = _deserializer.int64(buffer);
    data.lowerV = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'learn_ball/ballCor';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a81fb488530784a24d84e3f7199f24f6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string heading
    string color
    int64 x
    int64 y
    int64 radius
    int64 upperH
    int64 upperS
    int64 upperV
    int64 lowerH
    int64 lowerS
    int64 lowerV
    `;
  }

};

module.exports = ballCor;
