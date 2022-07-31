;; Auto-generated. Do not edit!


(when (boundp 'leg_tracker::Leg)
  (if (not (find-package "LEG_TRACKER"))
    (make-package "LEG_TRACKER"))
  (shadow 'Leg (find-package "LEG_TRACKER")))
(unless (find-package "LEG_TRACKER::LEG")
  (make-package "LEG_TRACKER::LEG"))

(in-package "ROS")
;;//! \htmlinclude Leg.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass leg_tracker::Leg
  :super ros::object
  :slots (_position _confidence ))

(defmethod leg_tracker::Leg
  (:init
   (&key
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:confidence __confidence) 0.0)
    )
   (send-super :init)
   (setq _position __position)
   (setq _confidence (float __confidence))
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; float32 _confidence
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get leg_tracker::Leg :md5sum-) "8000af3463f92157ee303c820e3b02c6")
(setf (get leg_tracker::Leg :datatype-) "leg_tracker/Leg")
(setf (get leg_tracker::Leg :definition-)
      "# Position and confidence of a leg 
geometry_msgs/Point position
float32 confidence


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :leg_tracker/Leg "8000af3463f92157ee303c820e3b02c6")


