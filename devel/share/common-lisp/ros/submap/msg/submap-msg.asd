
(cl:in-package :asdf)

(defsystem "submap-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "gmm" :depends-on ("_package_gmm"))
    (:file "_package_gmm" :depends-on ("_package"))
    (:file "gmmlist" :depends-on ("_package_gmmlist"))
    (:file "_package_gmmlist" :depends-on ("_package"))
  ))