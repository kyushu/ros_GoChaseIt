# Install script for directory: /mtdata/Dropbox/udacity/RoboticsSoftwareEngineerND/Lesson_1/Project_1_Go_Chase_It/goChaseIt/catkin_ws/src/main

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/mtdata/Dropbox/udacity/RoboticsSoftwareEngineerND/Lesson_1/Project_1_Go_Chase_It/goChaseIt/catkin_ws/install")
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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/mtdata/Dropbox/udacity/RoboticsSoftwareEngineerND/Lesson_1/Project_1_Go_Chase_It/goChaseIt/catkin_ws/build/main/catkin_generated/installspace/main.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/main/cmake" TYPE FILE FILES
    "/mtdata/Dropbox/udacity/RoboticsSoftwareEngineerND/Lesson_1/Project_1_Go_Chase_It/goChaseIt/catkin_ws/build/main/catkin_generated/installspace/mainConfig.cmake"
    "/mtdata/Dropbox/udacity/RoboticsSoftwareEngineerND/Lesson_1/Project_1_Go_Chase_It/goChaseIt/catkin_ws/build/main/catkin_generated/installspace/mainConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/main" TYPE FILE FILES "/mtdata/Dropbox/udacity/RoboticsSoftwareEngineerND/Lesson_1/Project_1_Go_Chase_It/goChaseIt/catkin_ws/src/main/package.xml")
endif()

