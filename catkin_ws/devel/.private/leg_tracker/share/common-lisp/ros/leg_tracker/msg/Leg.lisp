; Auto-generated. Do not edit!


(cl:in-package leg_tracker-msg)


;//! \htmlinclude Leg.msg.html

(cl:defclass <Leg> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0))
)

(cl:defclass Leg (<Leg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Leg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Leg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name leg_tracker-msg:<Leg> is deprecated: use leg_tracker-msg:Leg instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <Leg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leg_tracker-msg:position-val is deprecated.  Use leg_tracker-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <Leg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leg_tracker-msg:confidence-val is deprecated.  Use leg_tracker-msg:confidence instead.")
  (confidence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Leg>) ostream)
  "Serializes a message object of type '<Leg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Leg>) istream)
  "Deserializes a message object of type '<Leg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Leg>)))
  "Returns string type for a message object of type '<Leg>"
  "leg_tracker/Leg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Leg)))
  "Returns string type for a message object of type 'Leg"
  "leg_tracker/Leg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Leg>)))
  "Returns md5sum for a message object of type '<Leg>"
  "8000af3463f92157ee303c820e3b02c6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Leg)))
  "Returns md5sum for a message object of type 'Leg"
  "8000af3463f92157ee303c820e3b02c6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Leg>)))
  "Returns full string definition for message of type '<Leg>"
  (cl:format cl:nil "# Position and confidence of a leg ~%geometry_msgs/Point position~%float32 confidence~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Leg)))
  "Returns full string definition for message of type 'Leg"
  (cl:format cl:nil "# Position and confidence of a leg ~%geometry_msgs/Point position~%float32 confidence~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Leg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Leg>))
  "Converts a ROS message object to a list"
  (cl:list 'Leg
    (cl:cons ':position (position msg))
    (cl:cons ':confidence (confidence msg))
))
