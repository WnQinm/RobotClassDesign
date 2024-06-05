;; Auto-generated. Do not edit!


(when (boundp 'riki_msgs::Shoot)
  (if (not (find-package "RIKI_MSGS"))
    (make-package "RIKI_MSGS"))
  (shadow 'Shoot (find-package "RIKI_MSGS")))
(unless (find-package "RIKI_MSGS::SHOOT")
  (make-package "RIKI_MSGS::SHOOT"))
(unless (find-package "RIKI_MSGS::SHOOTREQUEST")
  (make-package "RIKI_MSGS::SHOOTREQUEST"))
(unless (find-package "RIKI_MSGS::SHOOTRESPONSE")
  (make-package "RIKI_MSGS::SHOOTRESPONSE"))

(in-package "ROS")





(defclass riki_msgs::ShootRequest
  :super ros::object
  :slots (_time ))

(defmethod riki_msgs::ShootRequest
  (:init
   (&key
    ((:time __time) 0)
    )
   (send-super :init)
   (setq _time (round __time))
   self)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:serialization-length
   ()
   (+
    ;; int16 _time
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _time
       (write-word _time s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _time
     (setq _time (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass riki_msgs::ShootResponse
  :super ros::object
  :slots ())

(defmethod riki_msgs::ShootResponse
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

(defclass riki_msgs::Shoot
  :super ros::object
  :slots ())

(setf (get riki_msgs::Shoot :md5sum-) "b8e8bf26b20382c114e84bf5da39d6e4")
(setf (get riki_msgs::Shoot :datatype-) "riki_msgs/Shoot")
(setf (get riki_msgs::Shoot :request) riki_msgs::ShootRequest)
(setf (get riki_msgs::Shoot :response) riki_msgs::ShootResponse)

(defmethod riki_msgs::ShootRequest
  (:response () (instance riki_msgs::ShootResponse :init)))

(setf (get riki_msgs::ShootRequest :md5sum-) "b8e8bf26b20382c114e84bf5da39d6e4")
(setf (get riki_msgs::ShootRequest :datatype-) "riki_msgs/ShootRequest")
(setf (get riki_msgs::ShootRequest :definition-)
      "int16 time

---
")

(setf (get riki_msgs::ShootResponse :md5sum-) "b8e8bf26b20382c114e84bf5da39d6e4")
(setf (get riki_msgs::ShootResponse :datatype-) "riki_msgs/ShootResponse")
(setf (get riki_msgs::ShootResponse :definition-)
      "int16 time

---
")



(provide :riki_msgs/Shoot "b8e8bf26b20382c114e84bf5da39d6e4")


