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
CMAKE_SOURCE_DIR = /root/prime/net/tests/build

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/prime/net/tests/build

# Include any dependencies generated for this target.
include CMakeFiles/eventloopthreadpool_unittest.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/eventloopthreadpool_unittest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/eventloopthreadpool_unittest.dir/flags.make

CMakeFiles/eventloopthreadpool_unittest.dir/root/prime/net/tests/EventLoopThreadPool_unittest.o: CMakeFiles/eventloopthreadpool_unittest.dir/flags.make
CMakeFiles/eventloopthreadpool_unittest.dir/root/prime/net/tests/EventLoopThreadPool_unittest.o: /root/prime/net/tests/EventLoopThreadPool_unittest.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /root/prime/net/tests/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/eventloopthreadpool_unittest.dir/root/prime/net/tests/EventLoopThreadPool_unittest.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/eventloopthreadpool_unittest.dir/root/prime/net/tests/EventLoopThreadPool_unittest.o -c /root/prime/net/tests/EventLoopThreadPool_unittest.cc

CMakeFiles/eventloopthreadpool_unittest.dir/root/prime/net/tests/EventLoopThreadPool_unittest.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/eventloopthreadpool_unittest.dir/root/prime/net/tests/EventLoopThreadPool_unittest.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /root/prime/net/tests/EventLoopThreadPool_unittest.cc > CMakeFiles/eventloopthreadpool_unittest.dir/root/prime/net/tests/EventLoopThreadPool_unittest.i

CMakeFiles/eventloopthreadpool_unittest.dir/root/prime/net/tests/EventLoopThreadPool_unittest.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/eventloopthreadpool_unittest.dir/root/prime/net/tests/EventLoopThreadPool_unittest.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /root/prime/net/tests/EventLoopThreadPool_unittest.cc -o CMakeFiles/eventloopthreadpool_unittest.dir/root/prime/net/tests/EventLoopThreadPool_unittest.s

CMakeFiles/eventloopthreadpool_unittest.dir/root/prime/net/tests/EventLoopThreadPool_unittest.o.requires:
.PHONY : CMakeFiles/eventloopthreadpool_unittest.dir/root/prime/net/tests/EventLoopThreadPool_unittest.o.requires

CMakeFiles/eventloopthreadpool_unittest.dir/root/prime/net/tests/EventLoopThreadPool_unittest.o.provides: CMakeFiles/eventloopthreadpool_unittest.dir/root/prime/net/tests/EventLoopThreadPool_unittest.o.requires
	$(MAKE) -f CMakeFiles/eventloopthreadpool_unittest.dir/build.make CMakeFiles/eventloopthreadpool_unittest.dir/root/prime/net/tests/EventLoopThreadPool_unittest.o.provides.build
.PHONY : CMakeFiles/eventloopthreadpool_unittest.dir/root/prime/net/tests/EventLoopThreadPool_unittest.o.provides

CMakeFiles/eventloopthreadpool_unittest.dir/root/prime/net/tests/EventLoopThreadPool_unittest.o.provides.build: CMakeFiles/eventloopthreadpool_unittest.dir/root/prime/net/tests/EventLoopThreadPool_unittest.o

# Object files for target eventloopthreadpool_unittest
eventloopthreadpool_unittest_OBJECTS = \
"CMakeFiles/eventloopthreadpool_unittest.dir/root/prime/net/tests/EventLoopThreadPool_unittest.o"

# External object files for target eventloopthreadpool_unittest
eventloopthreadpool_unittest_EXTERNAL_OBJECTS =

eventloopthreadpool_unittest: CMakeFiles/eventloopthreadpool_unittest.dir/root/prime/net/tests/EventLoopThreadPool_unittest.o
eventloopthreadpool_unittest: CMakeFiles/eventloopthreadpool_unittest.dir/build.make
eventloopthreadpool_unittest: libprime_net.a
eventloopthreadpool_unittest: libprime_base.a
eventloopthreadpool_unittest: CMakeFiles/eventloopthreadpool_unittest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable eventloopthreadpool_unittest"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/eventloopthreadpool_unittest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/eventloopthreadpool_unittest.dir/build: eventloopthreadpool_unittest
.PHONY : CMakeFiles/eventloopthreadpool_unittest.dir/build

CMakeFiles/eventloopthreadpool_unittest.dir/requires: CMakeFiles/eventloopthreadpool_unittest.dir/root/prime/net/tests/EventLoopThreadPool_unittest.o.requires
.PHONY : CMakeFiles/eventloopthreadpool_unittest.dir/requires

CMakeFiles/eventloopthreadpool_unittest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/eventloopthreadpool_unittest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/eventloopthreadpool_unittest.dir/clean

CMakeFiles/eventloopthreadpool_unittest.dir/depend:
	cd /root/prime/net/tests/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/prime/net/tests/build /root/prime/net/tests/build /root/prime/net/tests/build /root/prime/net/tests/build /root/prime/net/tests/build/CMakeFiles/eventloopthreadpool_unittest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/eventloopthreadpool_unittest.dir/depend

