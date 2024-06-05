;; Auto-generated. Do not edit!


(when (boundp 'riki_msgs::RobotVoiceCtrl)
  (if (not (find-package "RIKI_MSGS"))
    (make-package "RIKI_MSGS"))
  (shadow 'RobotVoiceCtrl (find-package "RIKI_MSGS")))
(unless (find-package "RIKI_MSGS::ROBOTVOICECTRL")
  (make-package "RIKI_MSGS::ROBOTVOICECTRL"))
(unless (find-package "RIKI_MSGS::ROBOTVOICECTRLREQUEST")
  (make-package "RIKI_MSGS::ROBOTVOICECTRLREQUEST"))
(unless (find-package "RIKI_MSGS::ROBOTVOICECTRLRESPONSE")
  (make-package "RIKI_MSGS::ROBOTVOICECTRLRESPONSE"))

(in-package "ROS")





(defclass riki_msgs::RobotVoiceCtrlRequest
  :super ros::object
  :slots (_ctrl_id ))

(defmethod riki_msgs::RobotVoiceCtrlRequest
  (:init
   (&key
    ((:ctrl_id __ctrl_id) 0)
    )
   (send-super :init)
   (setq _ctrl_id (round __ctrl_id))
   self)
  (:ctrl_id
   (&optional __ctrl_id)
   (if __ctrl_id (setq _ctrl_id __ctrl_id)) _ctrl_id)
  (:serialization-length
   ()
   (+
    ;; int32 _ctrl_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _ctrl_id
       (write-long _ctrl_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _ctrl_id
     (setq _ctrl_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass riki_msgs::RobotVoiceCtrlResponse
  :super ros::object
  :slots (_face_id ))

(defmethod riki_msgs::RobotVoiceCtrlResponse
  (:init
   (&key
    ((:face_id __face_id) nil)
    )
   (send-super :init)
   (setq _face_id __face_id)
   self)
  (:face_id
   (&optional __face_id)
   (if __face_id (setq _face_id __face_id)) _face_id)
  (:serialization-length
   ()
   (+
    ;; bool _face_id
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _face_id
       (if _face_id (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _face_id
     (setq _face_id (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass riki_msgs::RobotVoiceCtrl
  :super ros::object
  :slots ())

(setf (get riki_msgs::RobotVoiceCtrl :md5sum-) "99d7cbf41203ea07c76e17ef42eda7f5")
(setf (get riki_msgs::RobotVoiceCtrl :datatype-) "riki_msgs/RobotVoiceCtrl")
(setf (get riki_msgs::RobotVoiceCtrl :request) riki_msgs::RobotVoiceCtrlRequest)
(setf (get riki_msgs::RobotVoiceCtrl :response) riki_msgs::RobotVoiceCtrlResponse)

(defmethod riki_msgs::RobotVoiceCtrlRequest
  (:response () (instance riki_msgs::RobotVoiceCtrlResponse :init)))

(setf (get riki_msgs::RobotVoiceCtrlRequest :md5sum-) "99d7cbf41203ea07c76e17ef42eda7f5")
(setf (get riki_msgs::RobotVoiceCtrlRequest :datatype-) "riki_msgs/RobotVoiceCtrlRequest")
(setf (get riki_msgs::RobotVoiceCtrlRequest :definition-)
      "int32 ctrl_id
---
bool face_id


")

(setf (get riki_msgs::RobotVoiceCtrlResponse :md5sum-) "99d7cbf41203ea07c76e17ef42eda7f5")
(setf (get riki_msgs::RobotVoiceCtrlResponse :datatype-) "riki_msgs/RobotVoiceCtrlResponse")
(setf (get riki_msgs::RobotVoiceCtrlResponse :definition-)
      "int32 ctrl_id
---
bool face_id


")



(provide :riki_msgs/RobotVoiceCtrl "99d7cbf41203ea07c76e17ef42eda7f5")


