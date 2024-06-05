;; Auto-generated. Do not edit!


(when (boundp 'riki_msgs::ps2_value)
  (if (not (find-package "RIKI_MSGS"))
    (make-package "RIKI_MSGS"))
  (shadow 'ps2_value (find-package "RIKI_MSGS")))
(unless (find-package "RIKI_MSGS::PS2_VALUE")
  (make-package "RIKI_MSGS::PS2_VALUE"))

(in-package "ROS")
;;//! \htmlinclude ps2_value.msg.html


(defclass riki_msgs::ps2_value
  :super ros::object
  :slots (_data ))

(defmethod riki_msgs::ps2_value
  (:init
   (&key
    ((:data __data) (make-array 10 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; uint8[10] _data
    (* 1    10)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[10] _data
     (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[10] _data
   (setq _data (make-array 10 :element-type :char))
   (replace _data buf :start2 ptr-) (incf ptr- 10)
   ;;
   self)
  )

(setf (get riki_msgs::ps2_value :md5sum-) "0c05a05733f13fb160c661ca1798fdba")
(setf (get riki_msgs::ps2_value :datatype-) "riki_msgs/ps2_value")
(setf (get riki_msgs::ps2_value :definition-)
      "uint8[10] data

")



(provide :riki_msgs/ps2_value "0c05a05733f13fb160c661ca1798fdba")


