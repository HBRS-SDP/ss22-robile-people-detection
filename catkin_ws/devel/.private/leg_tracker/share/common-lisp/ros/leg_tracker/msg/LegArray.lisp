; Auto-generated. Do not edit!


(cl:in-package leg_tracker-msg)


;//! \htmlinclude LegArray.msg.html

(cl:defclass <LegArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (legs
    :reader legs
    :initarg :legs
    :type (cl:vector leg_tracker-msg:Leg)
   :initform (cl:make-array 0 :element-type 'leg_tracker-msg:Leg :initial-element (cl:make-instance 'leg_tracker-msg:Leg))))
)

(cl:defclass LegArray (<LegArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LegArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LegArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name leg_tracker-msg:<LegArray> is deprecated: use leg_tracker-msg:LegArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LegArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leg_tracker-msg:header-val is deprecated.  Use leg_tracker-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'legs-val :lambda-list '(m))
(cl:defmethod legs-val ((m <LegArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leg_tracker-msg:legs-val is deprecated.  Use leg_tracker-msg:legs instead.")
  (legs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LegArray>) ostream)
  "Serializes a message object of type '<LegArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'legs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'legs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LegArray>) istream)
  "Deserializes a message object of type '<LegArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'legs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'legs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'leg_tracker-msg:Leg))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LegArray>)))
  "Returns string type for a message object of type '<LegArray>"
  "leg_tracker/LegArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LegArray)))
  "Returns string type for a message object of type 'LegArray"
  "leg_tracker/LegArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LegArray>)))
  "Returns md5sum for a message object of type '<LegArray>"
  "9e932f47090c69cbf30f535c2ab02e32")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LegArray)))
  "Returns md5sum for a message object of type 'LegArray"
  "9e932f47090c69cbf30f535c2ab02e32")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LegArray>)))
  "Returns full string definition for message of type '<LegArray>"
  (cl:format cl:nil "# Array of legs ~%std_msgs/Header header~%Leg[] legs~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: leg_tracker/Leg~%# Position and confidence of a leg ~%geometry_msgs/Point position~%float32 confidence~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LegArray)))
  "Returns full string definition for message of type 'LegArray"
  (cl:format cl:nil "# Array of legs ~%std_msgs/Header header~%Leg[] legs~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: leg_tracker/Leg~%# Position and confidence of a leg ~%geometry_msgs/Point position~%float32 confidence~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LegArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'legs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LegArray>))
  "Converts a ROS message object to a list"
  (cl:list 'LegArray
    (cl:cons ':header (header msg))
    (cl:cons ':legs (legs msg))
))
