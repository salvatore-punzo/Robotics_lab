;; Auto-generated. Do not edit!


(when (boundp 'ros_service::service)
  (if (not (find-package "ROS_SERVICE"))
    (make-package "ROS_SERVICE"))
  (shadow 'service (find-package "ROS_SERVICE")))
(unless (find-package "ROS_SERVICE::SERVICE")
  (make-package "ROS_SERVICE::SERVICE"))
(unless (find-package "ROS_SERVICE::SERVICEREQUEST")
  (make-package "ROS_SERVICE::SERVICEREQUEST"))
(unless (find-package "ROS_SERVICE::SERVICERESPONSE")
  (make-package "ROS_SERVICE::SERVICERESPONSE"))

(in-package "ROS")





(defclass ros_service::serviceRequest
  :super ros::object
  :slots (_in1 _in2 ))

(defmethod ros_service::serviceRequest
  (:init
   (&key
    ((:in1 __in1) 0)
    ((:in2 __in2) 0)
    )
   (send-super :init)
   (setq _in1 (round __in1))
   (setq _in2 (round __in2))
   self)
  (:in1
   (&optional __in1)
   (if __in1 (setq _in1 __in1)) _in1)
  (:in2
   (&optional __in2)
   (if __in2 (setq _in2 __in2)) _in2)
  (:serialization-length
   ()
   (+
    ;; int32 _in1
    4
    ;; int32 _in2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _in1
       (write-long _in1 s)
     ;; int32 _in2
       (write-long _in2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _in1
     (setq _in1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _in2
     (setq _in2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ros_service::serviceResponse
  :super ros::object
  :slots (_out ))

(defmethod ros_service::serviceResponse
  (:init
   (&key
    ((:out __out) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _out __out)
   self)
  (:out
   (&optional __out)
   (if __out (setq _out __out)) _out)
  (:serialization-length
   ()
   (+
    ;; int32[] _out
    (* 4    (length _out)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _out
     (write-long (length _out) s)
     (dotimes (i (length _out))
       (write-long (elt _out i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _out
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _out (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _out i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass ros_service::service
  :super ros::object
  :slots ())

(setf (get ros_service::service :md5sum-) "2452478e798c9612b048c043328bbde8")
(setf (get ros_service::service :datatype-) "ros_service/service")
(setf (get ros_service::service :request) ros_service::serviceRequest)
(setf (get ros_service::service :response) ros_service::serviceResponse)

(defmethod ros_service::serviceRequest
  (:response () (instance ros_service::serviceResponse :init)))

(setf (get ros_service::serviceRequest :md5sum-) "2452478e798c9612b048c043328bbde8")
(setf (get ros_service::serviceRequest :datatype-) "ros_service/serviceRequest")
(setf (get ros_service::serviceRequest :definition-)
      "int32 in1
int32 in2
---
int32[] out

")

(setf (get ros_service::serviceResponse :md5sum-) "2452478e798c9612b048c043328bbde8")
(setf (get ros_service::serviceResponse :datatype-) "ros_service/serviceResponse")
(setf (get ros_service::serviceResponse :definition-)
      "int32 in1
int32 in2
---
int32[] out

")



(provide :ros_service/service "2452478e798c9612b048c043328bbde8")


