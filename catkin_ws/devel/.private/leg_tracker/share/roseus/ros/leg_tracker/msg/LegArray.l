;; Auto-generated. Do not edit!


(when (boundp 'leg_tracker::LegArray)
  (if (not (find-package "LEG_TRACKER"))
    (make-package "LEG_TRACKER"))
  (shadow 'LegArray (find-package "LEG_TRACKER")))
(unless (find-package "LEG_TRACKER::LEGARRAY")
  (make-package "LEG_TRACKER::LEGARRAY"))

(in-package "ROS")
;;//! \htmlinclude LegArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass leg_tracker::LegArray
  :super ros::object
  :slots (_header _legs ))

(defmethod leg_tracker::LegArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:legs __legs) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _legs __legs)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:legs
   (&rest __legs)
   (if (keywordp (car __legs))
       (send* _legs __legs)
     (progn
       (if __legs (setq _legs (car __legs)))
       _legs)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; leg_tracker/Leg[] _legs
    (apply #'+ (send-all _legs :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; leg_tracker/Leg[] _legs
     (write-long (length _legs) s)
     (dolist (elem _legs)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; leg_tracker/Leg[] _legs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _legs (let (r) (dotimes (i n) (push (instance leg_tracker::Leg :init) r)) r))
     (dolist (elem- _legs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get leg_tracker::LegArray :md5sum-) "9e932f47090c69cbf30f535c2ab02e32")
(setf (get leg_tracker::LegArray :datatype-) "leg_tracker/LegArray")
(setf (get leg_tracker::LegArray :definition-)
      "# Array of legs 
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

")



(provide :leg_tracker/LegArray "9e932f47090c69cbf30f535c2ab02e32")


