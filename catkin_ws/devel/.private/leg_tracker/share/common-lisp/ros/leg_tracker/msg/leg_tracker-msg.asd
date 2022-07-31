
(cl:in-package :asdf)

(defsystem "leg_tracker-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Leg" :depends-on ("_package_Leg"))
    (:file "_package_Leg" :depends-on ("_package"))
    (:file "LegArray" :depends-on ("_package_LegArray"))
    (:file "_package_LegArray" :depends-on ("_package"))
    (:file "Person" :depends-on ("_package_Person"))
    (:file "_package_Person" :depends-on ("_package"))
    (:file "PersonArray" :depends-on ("_package_PersonArray"))
    (:file "_package_PersonArray" :depends-on ("_package"))
  ))