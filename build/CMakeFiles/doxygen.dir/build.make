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

# Utility rule file for doxygen.

# Include any custom commands dependencies for this target.
include CMakeFiles/doxygen.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/doxygen.dir/progress.make

doxygen: CMakeFiles/doxygen.dir/build.make
.PHONY : doxygen

# Rule to build all files generated by this target.
CMakeFiles/doxygen.dir/build: doxygen
.PHONY : CMakeFiles/doxygen.dir/build

CMakeFiles/doxygen.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/doxygen.dir/cmake_clean.cmake
.PHONY : CMakeFiles/doxygen.dir/clean

CMakeFiles/doxygen.dir/depend:
	cd /home/rikibot/robotCourseDesign2024/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rikibot/robotCourseDesign2024/src /home/rikibot/robotCourseDesign2024/src /home/rikibot/robotCourseDesign2024/build /home/rikibot/robotCourseDesign2024/build /home/rikibot/robotCourseDesign2024/build/CMakeFiles/doxygen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/doxygen.dir/depend

