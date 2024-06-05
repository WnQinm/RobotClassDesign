# Install script for directory: /home/rikibot/robotCourseDesign2024/src/riki_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/rikibot/robotCourseDesign2024/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/riki_msgs/msg" TYPE FILE FILES
    "/home/rikibot/robotCourseDesign2024/src/riki_msgs/msg/Velocities.msg"
    "/home/rikibot/robotCourseDesign2024/src/riki_msgs/msg/PID.msg"
    "/home/rikibot/robotCourseDesign2024/src/riki_msgs/msg/Imu.msg"
    "/home/rikibot/robotCourseDesign2024/src/riki_msgs/msg/Battery.msg"
    "/home/rikibot/robotCourseDesign2024/src/riki_msgs/msg/DHT22.msg"
    "/home/rikibot/robotCourseDesign2024/src/riki_msgs/msg/Servo.msg"
    "/home/rikibot/robotCourseDesign2024/src/riki_msgs/msg/Infrared.msg"
    "/home/rikibot/robotCourseDesign2024/src/riki_msgs/msg/Ultrasonic.msg"
    "/home/rikibot/robotCourseDesign2024/src/riki_msgs/msg/Led.msg"
    "/home/rikibot/robotCourseDesign2024/src/riki_msgs/msg/Buzzer.msg"
    "/home/rikibot/robotCourseDesign2024/src/riki_msgs/msg/Arm.msg"
    "/home/rikibot/robotCourseDesign2024/src/riki_msgs/msg/Sonar.msg"
    "/home/rikibot/robotCourseDesign2024/src/riki_msgs/msg/RcMode.msg"
    "/home/rikibot/robotCourseDesign2024/src/riki_msgs/msg/Bluetooth.msg"
    "/home/rikibot/robotCourseDesign2024/src/riki_msgs/msg/Blue_connect.msg"
    "/home/rikibot/robotCourseDesign2024/src/riki_msgs/msg/ps2_value.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/riki_msgs/srv" TYPE FILE FILES
    "/home/rikibot/robotCourseDesign2024/src/riki_msgs/srv/ServoAngle.srv"
    "/home/rikibot/robotCourseDesign2024/src/riki_msgs/srv/RobotVoiceCtrl.srv"
    "/home/rikibot/robotCourseDesign2024/src/riki_msgs/srv/FaceVoiceSet.srv"
    "/home/rikibot/robotCourseDesign2024/src/riki_msgs/srv/Pose.srv"
    "/home/rikibot/robotCourseDesign2024/src/riki_msgs/srv/Gripper.srv"
    "/home/rikibot/robotCourseDesign2024/src/riki_msgs/srv/Trajectory.srv"
    "/home/rikibot/robotCourseDesign2024/src/riki_msgs/srv/Shoot.srv"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/riki_msgs/cmake" TYPE FILE FILES "/home/rikibot/robotCourseDesign2024/build/riki_msgs/catkin_generated/installspace/riki_msgs-msg-paths.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/rikibot/robotCourseDesign2024/devel/include/riki_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/rikibot/robotCourseDesign2024/devel/share/roseus/ros/riki_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/rikibot/robotCourseDesign2024/devel/share/common-lisp/ros/riki_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/rikibot/robotCourseDesign2024/devel/share/gennodejs/ros/riki_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/rikibot/robotCourseDesign2024/devel/lib/python2.7/dist-packages/riki_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/rikibot/robotCourseDesign2024/devel/lib/python2.7/dist-packages/riki_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/rikibot/robotCourseDesign2024/build/riki_msgs/catkin_generated/installspace/riki_msgs.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/riki_msgs/cmake" TYPE FILE FILES "/home/rikibot/robotCourseDesign2024/build/riki_msgs/catkin_generated/installspace/riki_msgs-msg-extras.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/riki_msgs/cmake" TYPE FILE FILES
    "/home/rikibot/robotCourseDesign2024/build/riki_msgs/catkin_generated/installspace/riki_msgsConfig.cmake"
    "/home/rikibot/robotCourseDesign2024/build/riki_msgs/catkin_generated/installspace/riki_msgsConfig-version.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/riki_msgs" TYPE FILE FILES "/home/rikibot/robotCourseDesign2024/src/riki_msgs/package.xml")
endif()

