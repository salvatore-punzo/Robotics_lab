; Auto-generated. Do not edit!


(cl:in-package ros_service-srv)


;//! \htmlinclude service-request.msg.html

(cl:defclass <service-request> (roslisp-msg-protocol:ros-message)
  ((in1
    :reader in1
    :initarg :in1
    :type cl:integer
    :initform 0)
   (in2
    :reader in2
    :initarg :in2
    :type cl:integer
    :initform 0))
)

(cl:defclass service-request (<service-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <service-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'service-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_service-srv:<service-request> is deprecated: use ros_service-srv:service-request instead.")))

(cl:ensure-generic-function 'in1-val :lambda-list '(m))
(cl:defmethod in1-val ((m <service-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_service-srv:in1-val is deprecated.  Use ros_service-srv:in1 instead.")
  (in1 m))

(cl:ensure-generic-function 'in2-val :lambda-list '(m))
(cl:defmethod in2-val ((m <service-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_service-srv:in2-val is deprecated.  Use ros_service-srv:in2 instead.")
  (in2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <service-request>) ostream)
  "Serializes a message object of type '<service-request>"
  (cl:let* ((signed (cl:slot-value msg 'in1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'in2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <service-request>) istream)
  "Deserializes a message object of type '<service-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'in1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'in2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<service-request>)))
  "Returns string type for a service object of type '<service-request>"
  "ros_service/serviceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'service-request)))
  "Returns string type for a service object of type 'service-request"
  "ros_service/serviceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<service-request>)))
  "Returns md5sum for a message object of type '<service-request>"
  "6be1cd591c0ae625d08d159056593da1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'service-request)))
  "Returns md5sum for a message object of type 'service-request"
  "6be1cd591c0ae625d08d159056593da1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<service-request>)))
  "Returns full string definition for message of type '<service-request>"
  (cl:format cl:nil "int32 in1~%int32 in2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'service-request)))
  "Returns full string definition for message of type 'service-request"
  (cl:format cl:nil "int32 in1~%int32 in2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <service-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <service-request>))
  "Converts a ROS message object to a list"
  (cl:list 'service-request
    (cl:cons ':in1 (in1 msg))
    (cl:cons ':in2 (in2 msg))
))
;//! \htmlinclude service-response.msg.html

(cl:defclass <service-response> (roslisp-msg-protocol:ros-message)
  ((out
    :reader out
    :initarg :out
    :type (cl:vector cl:integer)
   :initform (cl:make-array 4 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass service-response (<service-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <service-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'service-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_service-srv:<service-response> is deprecated: use ros_service-srv:service-response instead.")))

(cl:ensure-generic-function 'out-val :lambda-list '(m))
(cl:defmethod out-val ((m <service-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_service-srv:out-val is deprecated.  Use ros_service-srv:out instead.")
  (out m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <service-response>) ostream)
  "Serializes a message object of type '<service-response>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'out))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <service-response>) istream)
  "Deserializes a message object of type '<service-response>"
  (cl:setf (cl:slot-value msg 'out) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'out)))
    (cl:dotimes (i 4)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<service-response>)))
  "Returns string type for a service object of type '<service-response>"
  "ros_service/serviceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'service-response)))
  "Returns string type for a service object of type 'service-response"
  "ros_service/serviceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<service-response>)))
  "Returns md5sum for a message object of type '<service-response>"
  "6be1cd591c0ae625d08d159056593da1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'service-response)))
  "Returns md5sum for a message object of type 'service-response"
  "6be1cd591c0ae625d08d159056593da1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<service-response>)))
  "Returns full string definition for message of type '<service-response>"
  (cl:format cl:nil "int32[4] out~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'service-response)))
  "Returns full string definition for message of type 'service-response"
  (cl:format cl:nil "int32[4] out~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <service-response>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'out) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <service-response>))
  "Converts a ROS message object to a list"
  (cl:list 'service-response
    (cl:cons ':out (out msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'service)))
  'service-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'service)))
  'service-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'service)))
  "Returns string type for a service object of type '<service>"
  "ros_service/service")