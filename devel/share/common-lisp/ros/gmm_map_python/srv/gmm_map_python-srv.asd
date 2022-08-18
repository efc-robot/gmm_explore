
(cl:in-package :asdf)

(defsystem "gmm_map_python-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "FeatureExtraction" :depends-on ("_package_FeatureExtraction"))
    (:file "_package_FeatureExtraction" :depends-on ("_package"))
  ))