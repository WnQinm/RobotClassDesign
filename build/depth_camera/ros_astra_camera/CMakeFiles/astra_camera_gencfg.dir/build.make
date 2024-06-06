# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/lib/python3.6/dist-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /usr/local/lib/python3.6/dist-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/rikibot/robotCourseDesign2024/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/rikibot/robotCourseDesign2024/build

# Utility rule file for astra_camera_gencfg.

# Include any custom commands dependencies for this target.
include depth_camera/ros_astra_camera/CMakeFiles/astra_camera_gencfg.dir/compiler_depend.make

# Include the progress variables for this target.
include depth_camera/ros_astra_camera/CMakeFiles/astra_camera_gencfg.dir/progress.make

depth_camera/ros_astra_camera/CMakeFiles/astra_camera_gencfg: /home/rikibot/robotCourseDesign2024/devel/include/astra_camera/AstraConfig.h
depth_camera/ros_astra_camera/CMakeFiles/astra_camera_gencfg: /home/rikibot/robotCourseDesign2024/devel/lib/python2.7/dist-packages/astra_camera/cfg/AstraConfig.py
depth_camera/ros_astra_camera/CMakeFiles/astra_camera_gencfg: /home/rikibot/robotCourseDesign2024/devel/include/astra_camera/UVCCameraConfig.h
depth_camera/ros_astra_camera/CMakeFiles/astra_camera_gencfg: /home/rikibot/robotCourseDesign2024/devel/lib/python2.7/dist-packages/astra_camera/cfg/UVCCameraConfig.py

/home/rikibot/robotCourseDesign2024/devel/include/astra_camera/AstraConfig.h: /home/rikibot/robotCourseDesign2024/src/depth_camera/ros_astra_camera/cfg/Astra.cfg
/home/rikibot/robotCourseDesign2024/devel/include/astra_camera/AstraConfig.h: /opt/ros/melodic/share/dynamic_reconfigure/templates/ConfigType.py.template
/home/rikibot/robotCourseDesign2024/devel/include/astra_camera/AstraConfig.h: /opt/ros/melodic/share/dynamic_reconfigure/templates/ConfigType.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/rikibot/robotCourseDesign2024/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating dynamic reconfigure files from cfg/Astra.cfg: /home/rikibot/robotCourseDesign2024/devel/include/astra_camera/AstraConfig.h /home/rikibot/robotCourseDesign2024/devel/lib/python2.7/dist-packages/astra_camera/cfg/AstraConfig.py"
	cd /home/rikibot/robotCourseDesign2024/build/depth_camera/ros_astra_camera && ../../catkin_generated/env_cached.sh /home/rikibot/robotCourseDesign2024/build/depth_camera/ros_astra_camera/setup_custom_pythonpath.sh /home/rikibot/robotCourseDesign2024/src/depth_camera/ros_astra_camera/cfg/Astra.cfg /opt/ros/melodic/share/dynamic_reconfigure/cmake/.. /home/rikibot/robotCourseDesign2024/devel/share/astra_camera /home/rikibot/robotCourseDesign2024/devel/include/astra_camera /home/rikibot/robotCourseDesign2024/devel/lib/python2.7/dist-packages/astra_camera

/home/rikibot/robotCourseDesign2024/devel/share/astra_camera/docs/AstraConfig.dox: /home/rikibot/robotCourseDesign2024/devel/include/astra_camera/AstraConfig.h
	@$(CMAKE_COMMAND) -E touch_nocreate /home/rikibot/robotCourseDesign2024/devel/share/astra_camera/docs/AstraConfig.dox

/home/rikibot/robotCourseDesign2024/devel/share/astra_camera/docs/AstraConfig-usage.dox: /home/rikibot/robotCourseDesign2024/devel/include/astra_camera/AstraConfig.h
	@$(CMAKE_COMMAND) -E touch_nocreate /home/rikibot/robotCourseDesign2024/devel/share/astra_camera/docs/AstraConfig-usage.dox

/home/rikibot/robotCourseDesign2024/devel/lib/python2.7/dist-packages/astra_camera/cfg/AstraConfig.py: /home/rikibot/robotCourseDesign2024/devel/include/astra_camera/AstraConfig.h
	@$(CMAKE_COMMAND) -E touch_nocreate /home/rikibot/robotCourseDesign2024/devel/lib/python2.7/dist-packages/astra_camera/cfg/AstraConfig.py

/home/rikibot/robotCourseDesign2024/devel/share/astra_camera/docs/AstraConfig.wikidoc: /home/rikibot/robotCourseDesign2024/devel/include/astra_camera/AstraConfig.h
	@$(CMAKE_COMMAND) -E touch_nocreate /home/rikibot/robotCourseDesign2024/devel/share/astra_camera/docs/AstraConfig.wikidoc

/home/rikibot/robotCourseDesign2024/devel/include/astra_camera/UVCCameraConfig.h: /home/rikibot/robotCourseDesign2024/src/depth_camera/ros_astra_camera/cfg/UVCCamera.cfg
/home/rikibot/robotCourseDesign2024/devel/include/astra_camera/UVCCameraConfig.h: /opt/ros/melodic/share/dynamic_reconfigure/templates/ConfigType.py.template
/home/rikibot/robotCourseDesign2024/devel/include/astra_camera/UVCCameraConfig.h: /opt/ros/melodic/share/dynamic_reconfigure/templates/ConfigType.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/rikibot/robotCourseDesign2024/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating dynamic reconfigure files from cfg/UVCCamera.cfg: /home/rikibot/robotCourseDesign2024/devel/include/astra_camera/UVCCameraConfig.h /home/rikibot/robotCourseDesign2024/devel/lib/python2.7/dist-packages/astra_camera/cfg/UVCCameraConfig.py"
	cd /home/rikibot/robotCourseDesign2024/build/depth_camera/ros_astra_camera && ../../catkin_generated/env_cached.sh /home/rikibot/robotCourseDesign2024/build/depth_camera/ros_astra_camera/setup_custom_pythonpath.sh /home/rikibot/robotCourseDesign2024/src/depth_camera/ros_astra_camera/cfg/UVCCamera.cfg /opt/ros/melodic/share/dynamic_reconfigure/cmake/.. /home/rikibot/robotCourseDesign2024/devel/share/astra_camera /home/rikibot/robotCourseDesign2024/devel/include/astra_camera /home/rikibot/robotCourseDesign2024/devel/lib/python2.7/dist-packages/astra_camera

/home/rikibot/robotCourseDesign2024/devel/share/astra_camera/docs/UVCCameraConfig.dox: /home/rikibot/robotCourseDesign2024/devel/include/astra_camera/UVCCameraConfig.h
	@$(CMAKE_COMMAND) -E touch_nocreate /home/rikibot/robotCourseDesign2024/devel/share/astra_camera/docs/UVCCameraConfig.dox

/home/rikibot/robotCourseDesign2024/devel/share/astra_camera/docs/UVCCameraConfig-usage.dox: /home/rikibot/robotCourseDesign2024/devel/include/astra_camera/UVCCameraConfig.h
	@$(CMAKE_COMMAND) -E touch_nocreate /home/rikibot/robotCourseDesign2024/devel/share/astra_camera/docs/UVCCameraConfig-usage.dox

/home/rikibot/robotCourseDesign2024/devel/lib/python2.7/dist-packages/astra_camera/cfg/UVCCameraConfig.py: /home/rikibot/robotCourseDesign2024/devel/include/astra_camera/UVCCameraConfig.h
	@$(CMAKE_COMMAND) -E touch_nocreate /home/rikibot/robotCourseDesign2024/devel/lib/python2.7/dist-packages/astra_camera/cfg/UVCCameraConfig.py

/home/rikibot/robotCourseDesign2024/devel/share/astra_camera/docs/UVCCameraConfig.wikidoc: /home/rikibot/robotCourseDesign2024/devel/include/astra_camera/UVCCameraConfig.h
	@$(CMAKE_COMMAND) -E touch_nocreate /home/rikibot/robotCourseDesign2024/devel/share/astra_camera/docs/UVCCameraConfig.wikidoc

astra_camera_gencfg: depth_camera/ros_astra_camera/CMakeFiles/astra_camera_gencfg
astra_camera_gencfg: /home/rikibot/robotCourseDesign2024/devel/include/astra_camera/AstraConfig.h
astra_camera_gencfg: /home/rikibot/robotCourseDesign2024/devel/include/astra_camera/UVCCameraConfig.h
astra_camera_gencfg: /home/rikibot/robotCourseDesign2024/devel/lib/python2.7/dist-packages/astra_camera/cfg/AstraConfig.py
astra_camera_gencfg: /home/rikibot/robotCourseDesign2024/devel/lib/python2.7/dist-packages/astra_camera/cfg/UVCCameraConfig.py
astra_camera_gencfg: /home/rikibot/robotCourseDesign2024/devel/share/astra_camera/docs/AstraConfig-usage.dox
astra_camera_gencfg: /home/rikibot/robotCourseDesign2024/devel/share/astra_camera/docs/AstraConfig.dox
astra_camera_gencfg: /home/rikibot/robotCourseDesign2024/devel/share/astra_camera/docs/AstraConfig.wikidoc
astra_camera_gencfg: /home/rikibot/robotCourseDesign2024/devel/share/astra_camera/docs/UVCCameraConfig-usage.dox
astra_camera_gencfg: /home/rikibot/robotCourseDesign2024/devel/share/astra_camera/docs/UVCCameraConfig.dox
astra_camera_gencfg: /home/rikibot/robotCourseDesign2024/devel/share/astra_camera/docs/UVCCameraConfig.wikidoc
astra_camera_gencfg: depth_camera/ros_astra_camera/CMakeFiles/astra_camera_gencfg.dir/build.make
.PHONY : astra_camera_gencfg

# Rule to build all files generated by this target.
depth_camera/ros_astra_camera/CMakeFiles/astra_camera_gencfg.dir/build: astra_camera_gencfg
.PHONY : depth_camera/ros_astra_camera/CMakeFiles/astra_camera_gencfg.dir/build

depth_camera/ros_astra_camera/CMakeFiles/astra_camera_gencfg.dir/clean:
	cd /home/rikibot/robotCourseDesign2024/build/depth_camera/ros_astra_camera && $(CMAKE_COMMAND) -P CMakeFiles/astra_camera_gencfg.dir/cmake_clean.cmake
.PHONY : depth_camera/ros_astra_camera/CMakeFiles/astra_camera_gencfg.dir/clean

depth_camera/ros_astra_camera/CMakeFiles/astra_camera_gencfg.dir/depend:
	cd /home/rikibot/robotCourseDesign2024/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rikibot/robotCourseDesign2024/src /home/rikibot/robotCourseDesign2024/src/depth_camera/ros_astra_camera /home/rikibot/robotCourseDesign2024/build /home/rikibot/robotCourseDesign2024/build/depth_camera/ros_astra_camera /home/rikibot/robotCourseDesign2024/build/depth_camera/ros_astra_camera/CMakeFiles/astra_camera_gencfg.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : depth_camera/ros_astra_camera/CMakeFiles/astra_camera_gencfg.dir/depend

