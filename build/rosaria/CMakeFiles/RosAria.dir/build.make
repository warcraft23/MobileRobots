# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/edward/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/edward/catkin_ws/build

# Include any dependencies generated for this target.
include rosaria/CMakeFiles/RosAria.dir/depend.make

# Include the progress variables for this target.
include rosaria/CMakeFiles/RosAria.dir/progress.make

# Include the compile flags for this target's objects.
include rosaria/CMakeFiles/RosAria.dir/flags.make

rosaria/CMakeFiles/RosAria.dir/RosAria.cpp.o: rosaria/CMakeFiles/RosAria.dir/flags.make
rosaria/CMakeFiles/RosAria.dir/RosAria.cpp.o: /home/edward/catkin_ws/src/rosaria/RosAria.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/edward/catkin_ws/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object rosaria/CMakeFiles/RosAria.dir/RosAria.cpp.o"
	cd /home/edward/catkin_ws/build/rosaria && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/RosAria.dir/RosAria.cpp.o -c /home/edward/catkin_ws/src/rosaria/RosAria.cpp

rosaria/CMakeFiles/RosAria.dir/RosAria.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/RosAria.dir/RosAria.cpp.i"
	cd /home/edward/catkin_ws/build/rosaria && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/edward/catkin_ws/src/rosaria/RosAria.cpp > CMakeFiles/RosAria.dir/RosAria.cpp.i

rosaria/CMakeFiles/RosAria.dir/RosAria.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/RosAria.dir/RosAria.cpp.s"
	cd /home/edward/catkin_ws/build/rosaria && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/edward/catkin_ws/src/rosaria/RosAria.cpp -o CMakeFiles/RosAria.dir/RosAria.cpp.s

rosaria/CMakeFiles/RosAria.dir/RosAria.cpp.o.requires:
.PHONY : rosaria/CMakeFiles/RosAria.dir/RosAria.cpp.o.requires

rosaria/CMakeFiles/RosAria.dir/RosAria.cpp.o.provides: rosaria/CMakeFiles/RosAria.dir/RosAria.cpp.o.requires
	$(MAKE) -f rosaria/CMakeFiles/RosAria.dir/build.make rosaria/CMakeFiles/RosAria.dir/RosAria.cpp.o.provides.build
.PHONY : rosaria/CMakeFiles/RosAria.dir/RosAria.cpp.o.provides

rosaria/CMakeFiles/RosAria.dir/RosAria.cpp.o.provides.build: rosaria/CMakeFiles/RosAria.dir/RosAria.cpp.o

# Object files for target RosAria
RosAria_OBJECTS = \
"CMakeFiles/RosAria.dir/RosAria.cpp.o"

# External object files for target RosAria
RosAria_EXTERNAL_OBJECTS =

/home/edward/catkin_ws/devel/lib/rosaria/RosAria: rosaria/CMakeFiles/RosAria.dir/RosAria.cpp.o
/home/edward/catkin_ws/devel/lib/rosaria/RosAria: rosaria/CMakeFiles/RosAria.dir/build.make
/home/edward/catkin_ws/devel/lib/rosaria/RosAria: /opt/ros/indigo/lib/libtf.so
/home/edward/catkin_ws/devel/lib/rosaria/RosAria: /opt/ros/indigo/lib/libtf2_ros.so
/home/edward/catkin_ws/devel/lib/rosaria/RosAria: /opt/ros/indigo/lib/libactionlib.so
/home/edward/catkin_ws/devel/lib/rosaria/RosAria: /opt/ros/indigo/lib/libmessage_filters.so
/home/edward/catkin_ws/devel/lib/rosaria/RosAria: /opt/ros/indigo/lib/libroscpp.so
/home/edward/catkin_ws/devel/lib/rosaria/RosAria: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/edward/catkin_ws/devel/lib/rosaria/RosAria: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/edward/catkin_ws/devel/lib/rosaria/RosAria: /opt/ros/indigo/lib/libxmlrpcpp.so
/home/edward/catkin_ws/devel/lib/rosaria/RosAria: /opt/ros/indigo/lib/libtf2.so
/home/edward/catkin_ws/devel/lib/rosaria/RosAria: /opt/ros/indigo/lib/librosconsole.so
/home/edward/catkin_ws/devel/lib/rosaria/RosAria: /opt/ros/indigo/lib/librosconsole_log4cxx.so
/home/edward/catkin_ws/devel/lib/rosaria/RosAria: /opt/ros/indigo/lib/librosconsole_backend_interface.so
/home/edward/catkin_ws/devel/lib/rosaria/RosAria: /usr/lib/liblog4cxx.so
/home/edward/catkin_ws/devel/lib/rosaria/RosAria: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/edward/catkin_ws/devel/lib/rosaria/RosAria: /opt/ros/indigo/lib/libdynamic_reconfigure_config_init_mutex.so
/home/edward/catkin_ws/devel/lib/rosaria/RosAria: /opt/ros/indigo/lib/libroscpp_serialization.so
/home/edward/catkin_ws/devel/lib/rosaria/RosAria: /opt/ros/indigo/lib/librostime.so
/home/edward/catkin_ws/devel/lib/rosaria/RosAria: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/edward/catkin_ws/devel/lib/rosaria/RosAria: /opt/ros/indigo/lib/libcpp_common.so
/home/edward/catkin_ws/devel/lib/rosaria/RosAria: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/edward/catkin_ws/devel/lib/rosaria/RosAria: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/edward/catkin_ws/devel/lib/rosaria/RosAria: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/edward/catkin_ws/devel/lib/rosaria/RosAria: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/edward/catkin_ws/devel/lib/rosaria/RosAria: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/edward/catkin_ws/devel/lib/rosaria/RosAria: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/edward/catkin_ws/devel/lib/rosaria/RosAria: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/edward/catkin_ws/devel/lib/rosaria/RosAria: rosaria/CMakeFiles/RosAria.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable /home/edward/catkin_ws/devel/lib/rosaria/RosAria"
	cd /home/edward/catkin_ws/build/rosaria && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/RosAria.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
rosaria/CMakeFiles/RosAria.dir/build: /home/edward/catkin_ws/devel/lib/rosaria/RosAria
.PHONY : rosaria/CMakeFiles/RosAria.dir/build

rosaria/CMakeFiles/RosAria.dir/requires: rosaria/CMakeFiles/RosAria.dir/RosAria.cpp.o.requires
.PHONY : rosaria/CMakeFiles/RosAria.dir/requires

rosaria/CMakeFiles/RosAria.dir/clean:
	cd /home/edward/catkin_ws/build/rosaria && $(CMAKE_COMMAND) -P CMakeFiles/RosAria.dir/cmake_clean.cmake
.PHONY : rosaria/CMakeFiles/RosAria.dir/clean

rosaria/CMakeFiles/RosAria.dir/depend:
	cd /home/edward/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/edward/catkin_ws/src /home/edward/catkin_ws/src/rosaria /home/edward/catkin_ws/build /home/edward/catkin_ws/build/rosaria /home/edward/catkin_ws/build/rosaria/CMakeFiles/RosAria.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : rosaria/CMakeFiles/RosAria.dir/depend
