;; Auto-generated. Do not edit!


(when (boundp 'riki_msgs::Gripper)
  (if (not (find-package "RIKI_MSGS"))
    (make-package "RIKI_MSGS"))
  (shadow 'Gripper (find-package "RIKI_MSGS")))
(unless (find-package "RIKI_MSGS::GRIPPER")
  (make-package "RIKI_MSGS::GRIPPER"))
(unless (find-package "RIKI_MSGS::GRIPPERREQUEST")
  (make-package "RIKI_MSGS::GRIPPERREQUEST"))
(unless (find-package "RIKI_MSGS::GRIPPERRESPONSE")
  (make-package "RIKI_MSGS::GRIPPERRESPONSE"))

(in-package "ROS")





(defclass riki_msgs::GripperRequest
  :super ros::object
  :slots (_step _time ))

(defmethod riki_msgs::GripperRequest
  (:init
   (&key
    ((:step __step) 0)
    ((:time __time) 0)
    )
   (send-super :init)
   (setq _step (round __step))
   (setq _time (round __time))
   self)
  (:step
   (&optional __step)
   (if __step (setq _step __step)) _step)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:serialization-length
   ()
   (+
    ;; int16 _step
    2
    ;; int16 _time
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _step
       (write-word _step s)
     ;; int16 _time
       (write-word _time s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _step
     (setq _step (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _time
     (setq _time (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass riki_msgs::GripperResponse
  :super ros::object
  :slots ())

(defmethod riki_msgs::GripperResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass riki_msgs::Gripper
  :super ros::object
  :slots ())

(setf (get riki_msgs::Gripper :md5sum-) "e27b20d61c16bcd76ef982854742171b")
(setf (get riki_msgs::Gripper :datatype-) "riki_msgs/Gripper")
(setf (get riki_msgs::Gripper :request) riki_msgs::GripperRequest)
(setf (get riki_msgs::Gripper :response) riki_msgs::GripperResponse)

(defmethod riki_msgs::GripperRequest
  (:response () (instance riki_msgs::GripperResponse :init)))

(setf (get riki_msgs::GripperRequest :md5sum-) "e27b20d61c16bcd76ef982854742171b")
(setf (get riki_msgs::GripperRequest :datatype-) "riki_msgs/GripperRequest")
(setf (get riki_msgs::GripperRequest :definition-)
      "int16 step
int16 time

---
")

(setf (get riki_msgs::GripperResponse :md5sum-) "e27b20d61c16bcd76ef982854742171b")
(setf (get riki_msgs::GripperResponse :datatype-) "riki_msgs/GripperResponse")
(setf (get riki_msgs::GripperResponse :definition-)
      "int16 step
int16 time

---
")



(provide :riki_msgs/Gripper "e27b20d61c16bcd76ef982854742171b")


