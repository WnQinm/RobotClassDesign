;; Auto-generated. Do not edit!


(when (boundp 'riki_msgs::Trajectory)
  (if (not (find-package "RIKI_MSGS"))
    (make-package "RIKI_MSGS"))
  (shadow 'Trajectory (find-package "RIKI_MSGS")))
(unless (find-package "RIKI_MSGS::TRAJECTORY")
  (make-package "RIKI_MSGS::TRAJECTORY"))
(unless (find-package "RIKI_MSGS::TRAJECTORYREQUEST")
  (make-package "RIKI_MSGS::TRAJECTORYREQUEST"))
(unless (find-package "RIKI_MSGS::TRAJECTORYRESPONSE")
  (make-package "RIKI_MSGS::TRAJECTORYRESPONSE"))

(in-package "ROS")





(defclass riki_msgs::TrajectoryRequest
  :super ros::object
  :slots (_id2 _id3 _id4 _id5 _id6 _time ))

(defmethod riki_msgs::TrajectoryRequest
  (:init
   (&key
    ((:id2 __id2) 0)
    ((:id3 __id3) 0)
    ((:id4 __id4) 0)
    ((:id5 __id5) 0)
    ((:id6 __id6) 0)
    ((:time __time) 0)
    )
   (send-super :init)
   (setq _id2 (round __id2))
   (setq _id3 (round __id3))
   (setq _id4 (round __id4))
   (setq _id5 (round __id5))
   (setq _id6 (round __id6))
   (setq _time (round __time))
   self)
  (:id2
   (&optional __id2)
   (if __id2 (setq _id2 __id2)) _id2)
  (:id3
   (&optional __id3)
   (if __id3 (setq _id3 __id3)) _id3)
  (:id4
   (&optional __id4)
   (if __id4 (setq _id4 __id4)) _id4)
  (:id5
   (&optional __id5)
   (if __id5 (setq _id5 __id5)) _id5)
  (:id6
   (&optional __id6)
   (if __id6 (setq _id6 __id6)) _id6)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:serialization-length
   ()
   (+
    ;; int16 _id2
    2
    ;; int16 _id3
    2
    ;; int16 _id4
    2
    ;; int16 _id5
    2
    ;; int16 _id6
    2
    ;; int16 _time
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _id2
       (write-word _id2 s)
     ;; int16 _id3
       (write-word _id3 s)
     ;; int16 _id4
       (write-word _id4 s)
     ;; int16 _id5
       (write-word _id5 s)
     ;; int16 _id6
       (write-word _id6 s)
     ;; int16 _time
       (write-word _time s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _id2
     (setq _id2 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _id3
     (setq _id3 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _id4
     (setq _id4 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _id5
     (setq _id5 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _id6
     (setq _id6 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _time
     (setq _time (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass riki_msgs::TrajectoryResponse
  :super ros::object
  :slots ())

(defmethod riki_msgs::TrajectoryResponse
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

(defclass riki_msgs::Trajectory
  :super ros::object
  :slots ())

(setf (get riki_msgs::Trajectory :md5sum-) "f982c44c4992b0945e9540dc9fc648e5")
(setf (get riki_msgs::Trajectory :datatype-) "riki_msgs/Trajectory")
(setf (get riki_msgs::Trajectory :request) riki_msgs::TrajectoryRequest)
(setf (get riki_msgs::Trajectory :response) riki_msgs::TrajectoryResponse)

(defmethod riki_msgs::TrajectoryRequest
  (:response () (instance riki_msgs::TrajectoryResponse :init)))

(setf (get riki_msgs::TrajectoryRequest :md5sum-) "f982c44c4992b0945e9540dc9fc648e5")
(setf (get riki_msgs::TrajectoryRequest :datatype-) "riki_msgs/TrajectoryRequest")
(setf (get riki_msgs::TrajectoryRequest :definition-)
      "int16 id2
int16 id3
int16 id4
int16 id5
int16 id6
int16 time


---
")

(setf (get riki_msgs::TrajectoryResponse :md5sum-) "f982c44c4992b0945e9540dc9fc648e5")
(setf (get riki_msgs::TrajectoryResponse :datatype-) "riki_msgs/TrajectoryResponse")
(setf (get riki_msgs::TrajectoryResponse :definition-)
      "int16 id2
int16 id3
int16 id4
int16 id5
int16 id6
int16 time


---
")



(provide :riki_msgs/Trajectory "f982c44c4992b0945e9540dc9fc648e5")


