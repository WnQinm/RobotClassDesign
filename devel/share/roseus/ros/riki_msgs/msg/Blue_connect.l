;; Auto-generated. Do not edit!


(when (boundp 'riki_msgs::Blue_connect)
  (if (not (find-package "RIKI_MSGS"))
    (make-package "RIKI_MSGS"))
  (shadow 'Blue_connect (find-package "RIKI_MSGS")))
(unless (find-package "RIKI_MSGS::BLUE_CONNECT")
  (make-package "RIKI_MSGS::BLUE_CONNECT"))

(in-package "ROS")
;;//! \htmlinclude Blue_connect.msg.html


(defclass riki_msgs::Blue_connect
  :super ros::object
  :slots (_connect_stats ))

(defmethod riki_msgs::Blue_connect
  (:init
   (&key
    ((:connect_stats __connect_stats) 0)
    )
   (send-super :init)
   (setq _connect_stats (round __connect_stats))
   self)
  (:connect_stats
   (&optional __connect_stats)
   (if __connect_stats (setq _connect_stats __connect_stats)) _connect_stats)
  (:serialization-length
   ()
   (+
    ;; int32 _connect_stats
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _connect_stats
       (write-long _connect_stats s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _connect_stats
     (setq _connect_stats (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get riki_msgs::Blue_connect :md5sum-) "689b4c4cbf04148501838010cd8ac299")
(setf (get riki_msgs::Blue_connect :datatype-) "riki_msgs/Blue_connect")
(setf (get riki_msgs::Blue_connect :definition-)
      "int32 connect_stats

")



(provide :riki_msgs/Blue_connect "689b4c4cbf04148501838010cd8ac299")


