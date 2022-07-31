;; Auto-generated. Do not edit!


(when (boundp 'leg_tracker::PersonArray)
  (if (not (find-package "LEG_TRACKER"))
    (make-package "LEG_TRACKER"))
  (shadow 'PersonArray (find-package "LEG_TRACKER")))
(unless (find-package "LEG_TRACKER::PERSONARRAY")
  (make-package "LEG_TRACKER::PERSONARRAY"))

(in-package "ROS")
;;//! \htmlinclude PersonArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass leg_tracker::PersonArray
  :super ros::object
  :slots (_header _people ))

(defmethod leg_tracker::PersonArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:people __people) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _people __people)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:people
   (&rest __people)
   (if (keywordp (car __people))
       (send* _people __people)
     (progn
       (if __people (setq _people (car __people)))
       _people)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; leg_tracker/Person[] _people
    (apply #'+ (send-all _people :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; leg_tracker/Person[] _people
     (write-long (length _people) s)
     (dolist (elem _people)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; leg_tracker/Person[] _people
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _people (let (r) (dotimes (i n) (push (instance leg_tracker::Person :init) r)) r))
     (dolist (elem- _people)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get leg_tracker::PersonArray :md5sum-) "7b54bf6148ab21083b85a27eec643002")
(setf (get leg_tracker::PersonArray :datatype-) "leg_tracker/PersonArray")
(setf (get leg_tracker::PersonArray :definition-)
      "# Array of person positions
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

")



(provide :leg_tracker/PersonArray "7b54bf6148ab21083b85a27eec643002")


