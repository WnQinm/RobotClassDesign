;; Auto-generated. Do not edit!


(when (boundp 'riki_msgs::Pose)
  (if (not (find-package "RIKI_MSGS"))
    (make-package "RIKI_MSGS"))
  (shadow 'Pose (find-package "RIKI_MSGS")))
(unless (find-package "RIKI_MSGS::POSE")
  (make-package "RIKI_MSGS::POSE"))
(unless (find-package "RIKI_MSGS::POSEREQUEST")
  (make-package "RIKI_MSGS::POSEREQUEST"))
(unless (find-package "RIKI_MSGS::POSERESPONSE")
  (make-package "RIKI_MSGS::POSERESPONSE"))

(in-package "ROS")





(defclass riki_msgs::PoseRequest
  :super ros::object
  :slots (_x _y _z _rtoary _time ))

(defmethod riki_msgs::PoseRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:rtoary __rtoary) 0.0)
    ((:time __time) 0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _rtoary (float __rtoary))
   (setq _time (round __time))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:rtoary
   (&optional __rtoary)
   (if __rtoary (setq _rtoary __rtoary)) _rtoary)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; float32 _rtoary
    4
    ;; int16 _time
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rtoary
       (sys::poke _rtoary (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int16 _time
       (write-word _time s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rtoary
     (setq _rtoary (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int16 _time
     (setq _time (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass riki_msgs::PoseResponse
  :super ros::object
  :slots ())

(defmethod riki_msgs::PoseResponse
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

(defclass riki_msgs::Pose
  :super ros::object
  :slots ())

(setf (get riki_msgs::Pose :md5sum-) "c4258fd17a5d5267d5a22ad00faa1382")
(setf (get riki_msgs::Pose :datatype-) "riki_msgs/Pose")
(setf (get riki_msgs::Pose :request) riki_msgs::PoseRequest)
(setf (get riki_msgs::Pose :response) riki_msgs::PoseResponse)

(defmethod riki_msgs::PoseRequest
  (:response () (instance riki_msgs::PoseResponse :init)))

(setf (get riki_msgs::PoseRequest :md5sum-) "c4258fd17a5d5267d5a22ad00faa1382")
(setf (get riki_msgs::PoseRequest :datatype-) "riki_msgs/PoseRequest")
(setf (get riki_msgs::PoseRequest :definition-)
      "float32 x
float32 y
float32 z
float32 rtoary
int16 time

---
")

(setf (get riki_msgs::PoseResponse :md5sum-) "c4258fd17a5d5267d5a22ad00faa1382")
(setf (get riki_msgs::PoseResponse :datatype-) "riki_msgs/PoseResponse")
(setf (get riki_msgs::PoseResponse :definition-)
      "float32 x
float32 y
float32 z
float32 rtoary
int16 time

---
")



(provide :riki_msgs/Pose "c4258fd17a5d5267d5a22ad00faa1382")


