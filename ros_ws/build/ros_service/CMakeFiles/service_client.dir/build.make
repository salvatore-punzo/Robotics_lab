# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_SOURCE_DIR = /home/salvatore/ros_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/salvatore/ros_ws/build

# Include any dependencies generated for this target.
include ros_service/CMakeFiles/service_client.dir/depend.make

# Include the progress variables for this target.
include ros_service/CMakeFiles/service_client.dir/progress.make

# Include the compile flags for this target's objects.
include ros_service/CMakeFiles/service_client.dir/flags.make

ros_service/CMakeFiles/service_client.dir/src/service_client.cpp.o: ros_service/CMakeFiles/service_client.dir/flags.make
ros_service/CMakeFiles/service_client.dir/src/service_client.cpp.o: /home/salvatore/ros_ws/src/ros_service/src/service_client.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/salvatore/ros_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object ros_service/CMakeFiles/service_client.dir/src/service_client.cpp.o"
	cd /home/salvatore/ros_ws/build/ros_service && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/service_client.dir/src/service_client.cpp.o -c /home/salvatore/ros_ws/src/ros_service/src/service_client.cpp

ros_service/CMakeFiles/service_client.dir/src/service_client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/service_client.dir/src/service_client.cpp.i"
	cd /home/salvatore/ros_ws/build/ros_service && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/salvatore/ros_ws/src/ros_service/src/service_client.cpp > CMakeFiles/service_client.dir/src/service_client.cpp.i

ros_service/CMakeFiles/service_client.dir/src/service_client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/service_client.dir/src/service_client.cpp.s"
	cd /home/salvatore/ros_ws/build/ros_service && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/salvatore/ros_ws/src/ros_service/src/service_client.cpp -o CMakeFiles/service_client.dir/src/service_client.cpp.s

ros_service/CMakeFiles/service_client.dir/src/service_client.cpp.o.requires:

.PHONY : ros_service/CMakeFiles/service_client.dir/src/service_client.cpp.o.requires

ros_service/CMakeFiles/service_client.dir/src/service_client.cpp.o.provides: ros_service/CMakeFiles/service_client.dir/src/service_client.cpp.o.requires
	$(MAKE) -f ros_service/CMakeFiles/service_client.dir/build.make ros_service/CMakeFiles/service_client.dir/src/service_client.cpp.o.provides.build
.PHONY : ros_service/CMakeFiles/service_client.dir/src/service_client.cpp.o.provides

ros_service/CMakeFiles/service_client.dir/src/service_client.cpp.o.provides.build: ros_service/CMakeFiles/service_client.dir/src/service_client.cpp.o


# Object files for target service_client
service_client_OBJECTS = \
"CMakeFiles/service_client.dir/src/service_client.cpp.o"

# External object files for target service_client
service_client_EXTERNAL_OBJECTS =

/home/salvatore/ros_ws/devel/lib/ros_service/service_client: ros_service/CMakeFiles/service_client.dir/src/service_client.cpp.o
/home/salvatore/ros_ws/devel/lib/ros_service/service_client: ros_service/CMakeFiles/service_client.dir/build.make
/home/salvatore/ros_ws/devel/lib/ros_service/service_client: /opt/ros/melodic/lib/libroscpp.so
/home/salvatore/ros_ws/devel/lib/ros_service/service_client: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/salvatore/ros_ws/devel/lib/ros_service/service_client: /opt/ros/melodic/lib/librosconsole.so
/home/salvatore/ros_ws/devel/lib/ros_service/service_client: /opt/ros/melodic/lib/librosconsole_log4cxx.so
/home/salvatore/ros_ws/devel/lib/ros_service/service_client: /opt/ros/melodic/lib/librosconsole_backend_interface.so
/home/salvatore/ros_ws/devel/lib/ros_service/service_client: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/salvatore/ros_ws/devel/lib/ros_service/service_client: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/salvatore/ros_ws/devel/lib/ros_service/service_client: /opt/ros/melodic/lib/libxmlrpcpp.so
/home/salvatore/ros_ws/devel/lib/ros_service/service_client: /opt/ros/melodic/lib/libroscpp_serialization.so
/home/salvatore/ros_ws/devel/lib/ros_service/service_client: /opt/ros/melodic/lib/librostime.so
/home/salvatore/ros_ws/devel/lib/ros_service/service_client: /opt/ros/melodic/lib/libcpp_common.so
/home/salvatore/ros_ws/devel/lib/ros_service/service_client: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/salvatore/ros_ws/devel/lib/ros_service/service_client: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/salvatore/ros_ws/devel/lib/ros_service/service_client: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/salvatore/ros_ws/devel/lib/ros_service/service_client: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/salvatore/ros_ws/devel/lib/ros_service/service_client: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/salvatore/ros_ws/devel/lib/ros_service/service_client: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/salvatore/ros_ws/devel/lib/ros_service/service_client: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/salvatore/ros_ws/devel/lib/ros_service/service_client: ros_service/CMakeFiles/service_client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/salvatore/ros_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/salvatore/ros_ws/devel/lib/ros_service/service_client"
	cd /home/salvatore/ros_ws/build/ros_service && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/service_client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ros_service/CMakeFiles/service_client.dir/build: /home/salvatore/ros_ws/devel/lib/ros_service/service_client

.PHONY : ros_service/CMakeFiles/service_client.dir/build

ros_service/CMakeFiles/service_client.dir/requires: ros_service/CMakeFiles/service_client.dir/src/service_client.cpp.o.requires

.PHONY : ros_service/CMakeFiles/service_client.dir/requires

ros_service/CMakeFiles/service_client.dir/clean:
	cd /home/salvatore/ros_ws/build/ros_service && $(CMAKE_COMMAND) -P CMakeFiles/service_client.dir/cmake_clean.cmake
.PHONY : ros_service/CMakeFiles/service_client.dir/clean

ros_service/CMakeFiles/service_client.dir/depend:
	cd /home/salvatore/ros_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/salvatore/ros_ws/src /home/salvatore/ros_ws/src/ros_service /home/salvatore/ros_ws/build /home/salvatore/ros_ws/build/ros_service /home/salvatore/ros_ws/build/ros_service/CMakeFiles/service_client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ros_service/CMakeFiles/service_client.dir/depend

