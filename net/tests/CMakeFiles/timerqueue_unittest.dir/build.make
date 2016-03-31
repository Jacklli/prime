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
CMAKE_SOURCE_DIR = /root/muduo-1.0.0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/muduo-1.0.0

# Include any dependencies generated for this target.
include muduo/net/tests/CMakeFiles/timerqueue_unittest.dir/depend.make

# Include the progress variables for this target.
include muduo/net/tests/CMakeFiles/timerqueue_unittest.dir/progress.make

# Include the compile flags for this target's objects.
include muduo/net/tests/CMakeFiles/timerqueue_unittest.dir/flags.make

muduo/net/tests/CMakeFiles/timerqueue_unittest.dir/TimerQueue_unittest.cc.o: muduo/net/tests/CMakeFiles/timerqueue_unittest.dir/flags.make
muduo/net/tests/CMakeFiles/timerqueue_unittest.dir/TimerQueue_unittest.cc.o: muduo/net/tests/TimerQueue_unittest.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /root/muduo-1.0.0/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object muduo/net/tests/CMakeFiles/timerqueue_unittest.dir/TimerQueue_unittest.cc.o"
	cd /root/muduo-1.0.0/muduo/net/tests && g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/timerqueue_unittest.dir/TimerQueue_unittest.cc.o -c /root/muduo-1.0.0/muduo/net/tests/TimerQueue_unittest.cc

muduo/net/tests/CMakeFiles/timerqueue_unittest.dir/TimerQueue_unittest.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/timerqueue_unittest.dir/TimerQueue_unittest.cc.i"
	cd /root/muduo-1.0.0/muduo/net/tests && g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /root/muduo-1.0.0/muduo/net/tests/TimerQueue_unittest.cc > CMakeFiles/timerqueue_unittest.dir/TimerQueue_unittest.cc.i

muduo/net/tests/CMakeFiles/timerqueue_unittest.dir/TimerQueue_unittest.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/timerqueue_unittest.dir/TimerQueue_unittest.cc.s"
	cd /root/muduo-1.0.0/muduo/net/tests && g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /root/muduo-1.0.0/muduo/net/tests/TimerQueue_unittest.cc -o CMakeFiles/timerqueue_unittest.dir/TimerQueue_unittest.cc.s

muduo/net/tests/CMakeFiles/timerqueue_unittest.dir/TimerQueue_unittest.cc.o.requires:
.PHONY : muduo/net/tests/CMakeFiles/timerqueue_unittest.dir/TimerQueue_unittest.cc.o.requires

muduo/net/tests/CMakeFiles/timerqueue_unittest.dir/TimerQueue_unittest.cc.o.provides: muduo/net/tests/CMakeFiles/timerqueue_unittest.dir/TimerQueue_unittest.cc.o.requires
	$(MAKE) -f muduo/net/tests/CMakeFiles/timerqueue_unittest.dir/build.make muduo/net/tests/CMakeFiles/timerqueue_unittest.dir/TimerQueue_unittest.cc.o.provides.build
.PHONY : muduo/net/tests/CMakeFiles/timerqueue_unittest.dir/TimerQueue_unittest.cc.o.provides

muduo/net/tests/CMakeFiles/timerqueue_unittest.dir/TimerQueue_unittest.cc.o.provides.build: muduo/net/tests/CMakeFiles/timerqueue_unittest.dir/TimerQueue_unittest.cc.o

# Object files for target timerqueue_unittest
timerqueue_unittest_OBJECTS = \
"CMakeFiles/timerqueue_unittest.dir/TimerQueue_unittest.cc.o"

# External object files for target timerqueue_unittest
timerqueue_unittest_EXTERNAL_OBJECTS =

bin/timerqueue_unittest: muduo/net/tests/CMakeFiles/timerqueue_unittest.dir/TimerQueue_unittest.cc.o
bin/timerqueue_unittest: muduo/net/tests/CMakeFiles/timerqueue_unittest.dir/build.make
bin/timerqueue_unittest: lib/libmuduo_net.a
bin/timerqueue_unittest: lib/libmuduo_base.a
bin/timerqueue_unittest: muduo/net/tests/CMakeFiles/timerqueue_unittest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../../bin/timerqueue_unittest"
	cd /root/muduo-1.0.0/muduo/net/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/timerqueue_unittest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
muduo/net/tests/CMakeFiles/timerqueue_unittest.dir/build: bin/timerqueue_unittest
.PHONY : muduo/net/tests/CMakeFiles/timerqueue_unittest.dir/build

muduo/net/tests/CMakeFiles/timerqueue_unittest.dir/requires: muduo/net/tests/CMakeFiles/timerqueue_unittest.dir/TimerQueue_unittest.cc.o.requires
.PHONY : muduo/net/tests/CMakeFiles/timerqueue_unittest.dir/requires

muduo/net/tests/CMakeFiles/timerqueue_unittest.dir/clean:
	cd /root/muduo-1.0.0/muduo/net/tests && $(CMAKE_COMMAND) -P CMakeFiles/timerqueue_unittest.dir/cmake_clean.cmake
.PHONY : muduo/net/tests/CMakeFiles/timerqueue_unittest.dir/clean

muduo/net/tests/CMakeFiles/timerqueue_unittest.dir/depend:
	cd /root/muduo-1.0.0 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/muduo-1.0.0 /root/muduo-1.0.0/muduo/net/tests /root/muduo-1.0.0 /root/muduo-1.0.0/muduo/net/tests /root/muduo-1.0.0/muduo/net/tests/CMakeFiles/timerqueue_unittest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : muduo/net/tests/CMakeFiles/timerqueue_unittest.dir/depend

