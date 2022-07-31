; Auto-generated. Do not edit!


(cl:in-package leg_tracker-msg)


;//! \htmlinclude PersonArray.msg.html

(cl:defclass <PersonArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (people
    :reader people
    :initarg :people
    :type (cl:vector leg_tracker-msg:Person)
   :initform (cl:make-array 0 :element-type 'leg_tracker-msg:Person :initial-element (cl:make-instance 'leg_tracker-msg:Person))))
)

(cl:defclass PersonArray (<PersonArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PersonArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PersonArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name leg_tracker-msg:<PersonArray> is deprecated: use leg_tracker-msg:PersonArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PersonArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leg_tracker-msg:header-val is deprecated.  Use leg_tracker-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'people-val :lambda-list '(m))
(cl:defmethod people-val ((m <PersonArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leg_tracker-msg:people-val is deprecated.  Use leg_tracker-msg:people instead.")
  (people m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PersonArray>) ostream)
  "Serializes a message object of type '<PersonArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'people))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'people))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PersonArray>) istream)
  "Deserializes a message object of type '<PersonArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'people) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'people)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'leg_tracker-msg:Person))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PersonArray>)))
  "Returns string type for a message object of type '<PersonArray>"
  "leg_tracker/PersonArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PersonArray)))
  "Returns string type for a message object of type 'PersonArray"
  "leg_tracker/PersonArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PersonArray>)))
  "Returns md5sum for a message object of type '<PersonArray>"
  "7b54bf6148ab21083b85a27eec643002")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PersonArray)))
  "Returns md5sum for a message object of type 'PersonArray"
  "7b54bf6148ab21083b85a27eec643002")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PersonArray>)))
  "Returns full string definition for message of type '<PersonArray>"
  (cl:format cl:nil "# Array of person positions~%std_msgs/Header header~%Person[] people~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: leg_tracker/Person~%# Pose of a person~%geometry_msgs/Pose pose~%uint32 id~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PersonArray)))
  "Returns full string definition for message of type 'PersonArray"
  (cl:format cl:nil "# Array of person positions~%std_msgs/Header header~%Person[] people~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: leg_tracker/Person~%# Pose of a person~%geometry_msgs/Pose pose~%uint32 id~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PersonArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'people) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PersonArray>))
  "Converts a ROS message object to a list"
  (cl:list 'PersonArray
    (cl:cons ':header (header msg))
    (cl:cons ':people (people msg))
))
