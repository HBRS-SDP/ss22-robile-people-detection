# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "leg_tracker: 4 messages, 0 services")

set(MSG_I_FLAGS "-Ileg_tracker:/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(leg_tracker_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/Person.msg" NAME_WE)
add_custom_target(_leg_tracker_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "leg_tracker" "/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/Person.msg" "geometry_msgs/Point:geometry_msgs/Pose:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/PersonArray.msg" NAME_WE)
add_custom_target(_leg_tracker_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "leg_tracker" "/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/PersonArray.msg" "geometry_msgs/Pose:leg_tracker/Person:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/Leg.msg" NAME_WE)
add_custom_target(_leg_tracker_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "leg_tracker" "/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/Leg.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/LegArray.msg" NAME_WE)
add_custom_target(_leg_tracker_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "leg_tracker" "/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/LegArray.msg" "geometry_msgs/Point:leg_tracker/Leg:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(leg_tracker
  "/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/Person.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/leg_tracker
)
_generate_msg_cpp(leg_tracker
  "/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/PersonArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/Person.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/leg_tracker
)
_generate_msg_cpp(leg_tracker
  "/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/Leg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/leg_tracker
)
_generate_msg_cpp(leg_tracker
  "/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/LegArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/Leg.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/leg_tracker
)

### Generating Services

### Generating Module File
_generate_module_cpp(leg_tracker
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/leg_tracker
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(leg_tracker_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(leg_tracker_generate_messages leg_tracker_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/Person.msg" NAME_WE)
add_dependencies(leg_tracker_generate_messages_cpp _leg_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/PersonArray.msg" NAME_WE)
add_dependencies(leg_tracker_generate_messages_cpp _leg_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/Leg.msg" NAME_WE)
add_dependencies(leg_tracker_generate_messages_cpp _leg_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/LegArray.msg" NAME_WE)
add_dependencies(leg_tracker_generate_messages_cpp _leg_tracker_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(leg_tracker_gencpp)
add_dependencies(leg_tracker_gencpp leg_tracker_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS leg_tracker_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(leg_tracker
  "/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/Person.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/leg_tracker
)
_generate_msg_eus(leg_tracker
  "/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/PersonArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/Person.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/leg_tracker
)
_generate_msg_eus(leg_tracker
  "/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/Leg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/leg_tracker
)
_generate_msg_eus(leg_tracker
  "/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/LegArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/Leg.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/leg_tracker
)

### Generating Services

### Generating Module File
_generate_module_eus(leg_tracker
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/leg_tracker
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(leg_tracker_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(leg_tracker_generate_messages leg_tracker_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/Person.msg" NAME_WE)
add_dependencies(leg_tracker_generate_messages_eus _leg_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/PersonArray.msg" NAME_WE)
add_dependencies(leg_tracker_generate_messages_eus _leg_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/Leg.msg" NAME_WE)
add_dependencies(leg_tracker_generate_messages_eus _leg_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/LegArray.msg" NAME_WE)
add_dependencies(leg_tracker_generate_messages_eus _leg_tracker_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(leg_tracker_geneus)
add_dependencies(leg_tracker_geneus leg_tracker_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS leg_tracker_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(leg_tracker
  "/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/Person.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/leg_tracker
)
_generate_msg_lisp(leg_tracker
  "/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/PersonArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/Person.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/leg_tracker
)
_generate_msg_lisp(leg_tracker
  "/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/Leg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/leg_tracker
)
_generate_msg_lisp(leg_tracker
  "/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/LegArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/Leg.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/leg_tracker
)

### Generating Services

### Generating Module File
_generate_module_lisp(leg_tracker
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/leg_tracker
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(leg_tracker_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(leg_tracker_generate_messages leg_tracker_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/Person.msg" NAME_WE)
add_dependencies(leg_tracker_generate_messages_lisp _leg_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/PersonArray.msg" NAME_WE)
add_dependencies(leg_tracker_generate_messages_lisp _leg_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/Leg.msg" NAME_WE)
add_dependencies(leg_tracker_generate_messages_lisp _leg_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/LegArray.msg" NAME_WE)
add_dependencies(leg_tracker_generate_messages_lisp _leg_tracker_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(leg_tracker_genlisp)
add_dependencies(leg_tracker_genlisp leg_tracker_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS leg_tracker_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(leg_tracker
  "/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/Person.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/leg_tracker
)
_generate_msg_nodejs(leg_tracker
  "/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/PersonArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/Person.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/leg_tracker
)
_generate_msg_nodejs(leg_tracker
  "/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/Leg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/leg_tracker
)
_generate_msg_nodejs(leg_tracker
  "/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/LegArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/Leg.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/leg_tracker
)

### Generating Services

### Generating Module File
_generate_module_nodejs(leg_tracker
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/leg_tracker
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(leg_tracker_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(leg_tracker_generate_messages leg_tracker_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/Person.msg" NAME_WE)
add_dependencies(leg_tracker_generate_messages_nodejs _leg_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/PersonArray.msg" NAME_WE)
add_dependencies(leg_tracker_generate_messages_nodejs _leg_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/Leg.msg" NAME_WE)
add_dependencies(leg_tracker_generate_messages_nodejs _leg_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/LegArray.msg" NAME_WE)
add_dependencies(leg_tracker_generate_messages_nodejs _leg_tracker_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(leg_tracker_gennodejs)
add_dependencies(leg_tracker_gennodejs leg_tracker_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS leg_tracker_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(leg_tracker
  "/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/Person.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/leg_tracker
)
_generate_msg_py(leg_tracker
  "/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/PersonArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/Person.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/leg_tracker
)
_generate_msg_py(leg_tracker
  "/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/Leg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/leg_tracker
)
_generate_msg_py(leg_tracker
  "/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/LegArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/Leg.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/leg_tracker
)

### Generating Services

### Generating Module File
_generate_module_py(leg_tracker
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/leg_tracker
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(leg_tracker_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(leg_tracker_generate_messages leg_tracker_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/Person.msg" NAME_WE)
add_dependencies(leg_tracker_generate_messages_py _leg_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/PersonArray.msg" NAME_WE)
add_dependencies(leg_tracker_generate_messages_py _leg_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/Leg.msg" NAME_WE)
add_dependencies(leg_tracker_generate_messages_py _leg_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sam/Documents/HS-BRS/SDP/SDP/catkin_ws/src/leg_tracker/msg/LegArray.msg" NAME_WE)
add_dependencies(leg_tracker_generate_messages_py _leg_tracker_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(leg_tracker_genpy)
add_dependencies(leg_tracker_genpy leg_tracker_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS leg_tracker_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/leg_tracker)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/leg_tracker
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(leg_tracker_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(leg_tracker_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/leg_tracker)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/leg_tracker
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(leg_tracker_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(leg_tracker_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/leg_tracker)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/leg_tracker
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(leg_tracker_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(leg_tracker_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/leg_tracker)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/leg_tracker
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(leg_tracker_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(leg_tracker_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/leg_tracker)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/leg_tracker\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/leg_tracker
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(leg_tracker_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(leg_tracker_generate_messages_py geometry_msgs_generate_messages_py)
endif()
