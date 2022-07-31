;; Auto-generated. Do not edit!


(when (boundp 'leg_tracker::Person)
  (if (not (find-package "LEG_TRACKER"))
    (make-package "LEG_TRACKER"))
  (shadow 'Person (find-package "LEG_TRACKER")))
(unless (find-package "LEG_TRACKER::PERSON")
  (make-package "LEG_TRACKER::PERSON"))

(in-package "ROS")
;;//! \htmlinclude Person.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass leg_tracker::Person
  :super ros::object
  :slots (_pose _id ))

(defmethod leg_tracker::Person
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _id (round __id))
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; uint32 _id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; uint32 _id
       (write-long _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get leg_tracker::Person :md5sum-) "4f334171b5664340c323a1982b554a22")
(setf (get leg_tracker::Person :datatype-) "leg_tracker/Person")
(setf (get leg_tracker::Person :definition-)
      "# Pose of a person
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



(provide :leg_tracker/Person "4f334171b5664340c323a1982b554a22")


