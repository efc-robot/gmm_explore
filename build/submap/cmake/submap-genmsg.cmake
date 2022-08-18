# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "submap: 2 messages, 0 services")

set(MSG_I_FLAGS "-Isubmap:/home/ubuntu/demo_01/src/submap/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(submap_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ubuntu/demo_01/src/submap/msg/gmm.msg" NAME_WE)
add_custom_target(_submap_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "submap" "/home/ubuntu/demo_01/src/submap/msg/gmm.msg" "geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Pose:std_msgs/Header"
)

get_filename_component(_filename "/home/ubuntu/demo_01/src/submap/msg/gmmlist.msg" NAME_WE)
add_custom_target(_submap_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "submap" "/home/ubuntu/demo_01/src/submap/msg/gmmlist.msg" "geometry_msgs/Quaternion:submap/gmm:std_msgs/Header:geometry_msgs/Pose:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(submap
  "/home/ubuntu/demo_01/src/submap/msg/gmm.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/submap
)
_generate_msg_cpp(submap
  "/home/ubuntu/demo_01/src/submap/msg/gmmlist.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ubuntu/demo_01/src/submap/msg/gmm.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/submap
)

### Generating Services

### Generating Module File
_generate_module_cpp(submap
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/submap
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(submap_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(submap_generate_messages submap_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/demo_01/src/submap/msg/gmm.msg" NAME_WE)
add_dependencies(submap_generate_messages_cpp _submap_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/demo_01/src/submap/msg/gmmlist.msg" NAME_WE)
add_dependencies(submap_generate_messages_cpp _submap_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(submap_gencpp)
add_dependencies(submap_gencpp submap_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS submap_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(submap
  "/home/ubuntu/demo_01/src/submap/msg/gmm.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/submap
)
_generate_msg_eus(submap
  "/home/ubuntu/demo_01/src/submap/msg/gmmlist.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ubuntu/demo_01/src/submap/msg/gmm.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/submap
)

### Generating Services

### Generating Module File
_generate_module_eus(submap
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/submap
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(submap_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(submap_generate_messages submap_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/demo_01/src/submap/msg/gmm.msg" NAME_WE)
add_dependencies(submap_generate_messages_eus _submap_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/demo_01/src/submap/msg/gmmlist.msg" NAME_WE)
add_dependencies(submap_generate_messages_eus _submap_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(submap_geneus)
add_dependencies(submap_geneus submap_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS submap_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(submap
  "/home/ubuntu/demo_01/src/submap/msg/gmm.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/submap
)
_generate_msg_lisp(submap
  "/home/ubuntu/demo_01/src/submap/msg/gmmlist.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ubuntu/demo_01/src/submap/msg/gmm.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/submap
)

### Generating Services

### Generating Module File
_generate_module_lisp(submap
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/submap
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(submap_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(submap_generate_messages submap_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/demo_01/src/submap/msg/gmm.msg" NAME_WE)
add_dependencies(submap_generate_messages_lisp _submap_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/demo_01/src/submap/msg/gmmlist.msg" NAME_WE)
add_dependencies(submap_generate_messages_lisp _submap_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(submap_genlisp)
add_dependencies(submap_genlisp submap_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS submap_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(submap
  "/home/ubuntu/demo_01/src/submap/msg/gmm.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/submap
)
_generate_msg_nodejs(submap
  "/home/ubuntu/demo_01/src/submap/msg/gmmlist.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ubuntu/demo_01/src/submap/msg/gmm.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/submap
)

### Generating Services

### Generating Module File
_generate_module_nodejs(submap
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/submap
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(submap_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(submap_generate_messages submap_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/demo_01/src/submap/msg/gmm.msg" NAME_WE)
add_dependencies(submap_generate_messages_nodejs _submap_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/demo_01/src/submap/msg/gmmlist.msg" NAME_WE)
add_dependencies(submap_generate_messages_nodejs _submap_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(submap_gennodejs)
add_dependencies(submap_gennodejs submap_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS submap_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(submap
  "/home/ubuntu/demo_01/src/submap/msg/gmm.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/submap
)
_generate_msg_py(submap
  "/home/ubuntu/demo_01/src/submap/msg/gmmlist.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ubuntu/demo_01/src/submap/msg/gmm.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/submap
)

### Generating Services

### Generating Module File
_generate_module_py(submap
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/submap
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(submap_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(submap_generate_messages submap_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/demo_01/src/submap/msg/gmm.msg" NAME_WE)
add_dependencies(submap_generate_messages_py _submap_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/demo_01/src/submap/msg/gmmlist.msg" NAME_WE)
add_dependencies(submap_generate_messages_py _submap_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(submap_genpy)
add_dependencies(submap_genpy submap_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS submap_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/submap)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/submap
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(submap_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(submap_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/submap)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/submap
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(submap_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(submap_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/submap)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/submap
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(submap_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(submap_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/submap)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/submap
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(submap_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(submap_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/submap)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/submap\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/submap
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(submap_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(submap_generate_messages_py geometry_msgs_generate_messages_py)
endif()
