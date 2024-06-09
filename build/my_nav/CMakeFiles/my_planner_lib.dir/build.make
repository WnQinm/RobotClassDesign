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

# Include any dependencies generated for this target.
include my_nav/CMakeFiles/my_planner_lib.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include my_nav/CMakeFiles/my_planner_lib.dir/compiler_depend.make

# Include the progress variables for this target.
include my_nav/CMakeFiles/my_planner_lib.dir/progress.make

# Include the compile flags for this target's objects.
include my_nav/CMakeFiles/my_planner_lib.dir/flags.make

my_nav/CMakeFiles/my_planner_lib.dir/src/global_planner.cpp.o: my_nav/CMakeFiles/my_planner_lib.dir/flags.make
my_nav/CMakeFiles/my_planner_lib.dir/src/global_planner.cpp.o: /home/rikibot/robotCourseDesign2024/src/my_nav/src/global_planner.cpp
my_nav/CMakeFiles/my_planner_lib.dir/src/global_planner.cpp.o: my_nav/CMakeFiles/my_planner_lib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rikibot/robotCourseDesign2024/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object my_nav/CMakeFiles/my_planner_lib.dir/src/global_planner.cpp.o"
	cd /home/rikibot/robotCourseDesign2024/build/my_nav && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT my_nav/CMakeFiles/my_planner_lib.dir/src/global_planner.cpp.o -MF CMakeFiles/my_planner_lib.dir/src/global_planner.cpp.o.d -o CMakeFiles/my_planner_lib.dir/src/global_planner.cpp.o -c /home/rikibot/robotCourseDesign2024/src/my_nav/src/global_planner.cpp

my_nav/CMakeFiles/my_planner_lib.dir/src/global_planner.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_planner_lib.dir/src/global_planner.cpp.i"
	cd /home/rikibot/robotCourseDesign2024/build/my_nav && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rikibot/robotCourseDesign2024/src/my_nav/src/global_planner.cpp > CMakeFiles/my_planner_lib.dir/src/global_planner.cpp.i

my_nav/CMakeFiles/my_planner_lib.dir/src/global_planner.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_planner_lib.dir/src/global_planner.cpp.s"
	cd /home/rikibot/robotCourseDesign2024/build/my_nav && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rikibot/robotCourseDesign2024/src/my_nav/src/global_planner.cpp -o CMakeFiles/my_planner_lib.dir/src/global_planner.cpp.s

my_nav/CMakeFiles/my_planner_lib.dir/src/astar_planner.cpp.o: my_nav/CMakeFiles/my_planner_lib.dir/flags.make
my_nav/CMakeFiles/my_planner_lib.dir/src/astar_planner.cpp.o: /home/rikibot/robotCourseDesign2024/src/my_nav/src/astar_planner.cpp
my_nav/CMakeFiles/my_planner_lib.dir/src/astar_planner.cpp.o: my_nav/CMakeFiles/my_planner_lib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rikibot/robotCourseDesign2024/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object my_nav/CMakeFiles/my_planner_lib.dir/src/astar_planner.cpp.o"
	cd /home/rikibot/robotCourseDesign2024/build/my_nav && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT my_nav/CMakeFiles/my_planner_lib.dir/src/astar_planner.cpp.o -MF CMakeFiles/my_planner_lib.dir/src/astar_planner.cpp.o.d -o CMakeFiles/my_planner_lib.dir/src/astar_planner.cpp.o -c /home/rikibot/robotCourseDesign2024/src/my_nav/src/astar_planner.cpp

my_nav/CMakeFiles/my_planner_lib.dir/src/astar_planner.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_planner_lib.dir/src/astar_planner.cpp.i"
	cd /home/rikibot/robotCourseDesign2024/build/my_nav && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rikibot/robotCourseDesign2024/src/my_nav/src/astar_planner.cpp > CMakeFiles/my_planner_lib.dir/src/astar_planner.cpp.i

my_nav/CMakeFiles/my_planner_lib.dir/src/astar_planner.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_planner_lib.dir/src/astar_planner.cpp.s"
	cd /home/rikibot/robotCourseDesign2024/build/my_nav && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rikibot/robotCourseDesign2024/src/my_nav/src/astar_planner.cpp -o CMakeFiles/my_planner_lib.dir/src/astar_planner.cpp.s

# Object files for target my_planner_lib
my_planner_lib_OBJECTS = \
"CMakeFiles/my_planner_lib.dir/src/global_planner.cpp.o" \
"CMakeFiles/my_planner_lib.dir/src/astar_planner.cpp.o"

# External object files for target my_planner_lib
my_planner_lib_EXTERNAL_OBJECTS =

/home/rikibot/robotCourseDesign2024/devel/lib/libmy_planner_lib.so: my_nav/CMakeFiles/my_planner_lib.dir/src/global_planner.cpp.o
/home/rikibot/robotCourseDesign2024/devel/lib/libmy_planner_lib.so: my_nav/CMakeFiles/my_planner_lib.dir/src/astar_planner.cpp.o
/home/rikibot/robotCourseDesign2024/devel/lib/libmy_planner_lib.so: my_nav/CMakeFiles/my_planner_lib.dir/build.make
/home/rikibot/robotCourseDesign2024/devel/lib/libmy_planner_lib.so: /opt/ros/melodic/lib/libbase_local_planner.so
/home/rikibot/robotCourseDesign2024/devel/lib/libmy_planner_lib.so: /opt/ros/melodic/lib/libtrajectory_planner_ros.so
/home/rikibot/robotCourseDesign2024/devel/lib/libmy_planner_lib.so: /opt/ros/melodic/lib/libcostmap_2d.so
/home/rikibot/robotCourseDesign2024/devel/lib/libmy_planner_lib.so: /opt/ros/melodic/lib/liblayers.so
/home/rikibot/robotCourseDesign2024/devel/lib/libmy_planner_lib.so: /opt/ros/melodic/lib/libdynamic_reconfigure_config_init_mutex.so
/home/rikibot/robotCourseDesign2024/devel/lib/libmy_planner_lib.so: /opt/ros/melodic/lib/liblaser_geometry.so
/home/rikibot/robotCourseDesign2024/devel/lib/libmy_planner_lib.so: /opt/ros/melodic/lib/libclass_loader.so
/home/rikibot/robotCourseDesign2024/devel/lib/libmy_planner_lib.so: /usr/lib/libPocoFoundation.so
/home/rikibot/robotCourseDesign2024/devel/lib/libmy_planner_lib.so: /usr/lib/aarch64-linux-gnu/libdl.so
/home/rikibot/robotCourseDesign2024/devel/lib/libmy_planner_lib.so: /opt/ros/melodic/lib/libroslib.so
/home/rikibot/robotCourseDesign2024/devel/lib/libmy_planner_lib.so: /opt/ros/melodic/lib/librospack.so
/home/rikibot/robotCourseDesign2024/devel/lib/libmy_planner_lib.so: /usr/lib/aarch64-linux-gnu/libpython2.7.so
/home/rikibot/robotCourseDesign2024/devel/lib/libmy_planner_lib.so: /usr/lib/aarch64-linux-gnu/libboost_program_options.so
/home/rikibot/robotCourseDesign2024/devel/lib/libmy_planner_lib.so: /usr/lib/aarch64-linux-gnu/libtinyxml2.so
/home/rikibot/robotCourseDesign2024/devel/lib/libmy_planner_lib.so: /opt/ros/melodic/lib/libvoxel_grid.so
/home/rikibot/robotCourseDesign2024/devel/lib/libmy_planner_lib.so: /opt/ros/melodic/lib/libtf.so
/home/rikibot/robotCourseDesign2024/devel/lib/libmy_planner_lib.so: /opt/ros/melodic/lib/libtf2_ros.so
/home/rikibot/robotCourseDesign2024/devel/lib/libmy_planner_lib.so: /opt/ros/melodic/lib/libactionlib.so
/home/rikibot/robotCourseDesign2024/devel/lib/libmy_planner_lib.so: /opt/ros/melodic/lib/libmessage_filters.so
/home/rikibot/robotCourseDesign2024/devel/lib/libmy_planner_lib.so: /opt/ros/melodic/lib/libroscpp.so
/home/rikibot/robotCourseDesign2024/devel/lib/libmy_planner_lib.so: /usr/lib/aarch64-linux-gnu/libboost_filesystem.so
/home/rikibot/robotCourseDesign2024/devel/lib/libmy_planner_lib.so: /opt/ros/melodic/lib/libxmlrpcpp.so
/home/rikibot/robotCourseDesign2024/devel/lib/libmy_planner_lib.so: /opt/ros/melodic/lib/libtf2.so
/home/rikibot/robotCourseDesign2024/devel/lib/libmy_planner_lib.so: /opt/ros/melodic/lib/libroscpp_serialization.so
/home/rikibot/robotCourseDesign2024/devel/lib/libmy_planner_lib.so: /opt/ros/melodic/lib/librosconsole.so
/home/rikibot/robotCourseDesign2024/devel/lib/libmy_planner_lib.so: /opt/ros/melodic/lib/librosconsole_log4cxx.so
/home/rikibot/robotCourseDesign2024/devel/lib/libmy_planner_lib.so: /opt/ros/melodic/lib/librosconsole_backend_interface.so
/home/rikibot/robotCourseDesign2024/devel/lib/libmy_planner_lib.so: /usr/lib/aarch64-linux-gnu/liblog4cxx.so
/home/rikibot/robotCourseDesign2024/devel/lib/libmy_planner_lib.so: /usr/lib/aarch64-linux-gnu/libboost_regex.so
/home/rikibot/robotCourseDesign2024/devel/lib/libmy_planner_lib.so: /opt/ros/melodic/lib/librostime.so
/home/rikibot/robotCourseDesign2024/devel/lib/libmy_planner_lib.so: /opt/ros/melodic/lib/libcpp_common.so
/home/rikibot/robotCourseDesign2024/devel/lib/libmy_planner_lib.so: /usr/lib/aarch64-linux-gnu/libboost_system.so
/home/rikibot/robotCourseDesign2024/devel/lib/libmy_planner_lib.so: /usr/lib/aarch64-linux-gnu/libboost_thread.so
/home/rikibot/robotCourseDesign2024/devel/lib/libmy_planner_lib.so: /usr/lib/aarch64-linux-gnu/libboost_chrono.so
/home/rikibot/robotCourseDesign2024/devel/lib/libmy_planner_lib.so: /usr/lib/aarch64-linux-gnu/libboost_date_time.so
/home/rikibot/robotCourseDesign2024/devel/lib/libmy_planner_lib.so: /usr/lib/aarch64-linux-gnu/libboost_atomic.so
/home/rikibot/robotCourseDesign2024/devel/lib/libmy_planner_lib.so: /usr/lib/aarch64-linux-gnu/libpthread.so
/home/rikibot/robotCourseDesign2024/devel/lib/libmy_planner_lib.so: /usr/lib/aarch64-linux-gnu/libconsole_bridge.so.0.4
/home/rikibot/robotCourseDesign2024/devel/lib/libmy_planner_lib.so: my_nav/CMakeFiles/my_planner_lib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/rikibot/robotCourseDesign2024/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library /home/rikibot/robotCourseDesign2024/devel/lib/libmy_planner_lib.so"
	cd /home/rikibot/robotCourseDesign2024/build/my_nav && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/my_planner_lib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
my_nav/CMakeFiles/my_planner_lib.dir/build: /home/rikibot/robotCourseDesign2024/devel/lib/libmy_planner_lib.so
.PHONY : my_nav/CMakeFiles/my_planner_lib.dir/build

my_nav/CMakeFiles/my_planner_lib.dir/clean:
	cd /home/rikibot/robotCourseDesign2024/build/my_nav && $(CMAKE_COMMAND) -P CMakeFiles/my_planner_lib.dir/cmake_clean.cmake
.PHONY : my_nav/CMakeFiles/my_planner_lib.dir/clean

my_nav/CMakeFiles/my_planner_lib.dir/depend:
	cd /home/rikibot/robotCourseDesign2024/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rikibot/robotCourseDesign2024/src /home/rikibot/robotCourseDesign2024/src/my_nav /home/rikibot/robotCourseDesign2024/build /home/rikibot/robotCourseDesign2024/build/my_nav /home/rikibot/robotCourseDesign2024/build/my_nav/CMakeFiles/my_planner_lib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : my_nav/CMakeFiles/my_planner_lib.dir/depend

