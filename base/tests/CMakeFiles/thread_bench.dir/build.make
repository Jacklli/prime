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
CMAKE_SOURCE_DIR = /root/prime/base/tests

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/prime/base/tests

# Include any dependencies generated for this target.
include CMakeFiles/thread_bench.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/thread_bench.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/thread_bench.dir/flags.make

CMakeFiles/thread_bench.dir/Thread_bench.o: CMakeFiles/thread_bench.dir/flags.make
CMakeFiles/thread_bench.dir/Thread_bench.o: Thread_bench.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /root/prime/base/tests/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/thread_bench.dir/Thread_bench.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/thread_bench.dir/Thread_bench.o -c /root/prime/base/tests/Thread_bench.cc

CMakeFiles/thread_bench.dir/Thread_bench.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/thread_bench.dir/Thread_bench.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /root/prime/base/tests/Thread_bench.cc > CMakeFiles/thread_bench.dir/Thread_bench.i

CMakeFiles/thread_bench.dir/Thread_bench.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/thread_bench.dir/Thread_bench.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /root/prime/base/tests/Thread_bench.cc -o CMakeFiles/thread_bench.dir/Thread_bench.s

CMakeFiles/thread_bench.dir/Thread_bench.o.requires:
.PHONY : CMakeFiles/thread_bench.dir/Thread_bench.o.requires

CMakeFiles/thread_bench.dir/Thread_bench.o.provides: CMakeFiles/thread_bench.dir/Thread_bench.o.requires
	$(MAKE) -f CMakeFiles/thread_bench.dir/build.make CMakeFiles/thread_bench.dir/Thread_bench.o.provides.build
.PHONY : CMakeFiles/thread_bench.dir/Thread_bench.o.provides

CMakeFiles/thread_bench.dir/Thread_bench.o.provides.build: CMakeFiles/thread_bench.dir/Thread_bench.o

# Object files for target thread_bench
thread_bench_OBJECTS = \
"CMakeFiles/thread_bench.dir/Thread_bench.o"

# External object files for target thread_bench
thread_bench_EXTERNAL_OBJECTS =

thread_bench: CMakeFiles/thread_bench.dir/Thread_bench.o
thread_bench: CMakeFiles/thread_bench.dir/build.make
thread_bench: libprime_base.a
thread_bench: CMakeFiles/thread_bench.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable thread_bench"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/thread_bench.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/thread_bench.dir/build: thread_bench
.PHONY : CMakeFiles/thread_bench.dir/build

CMakeFiles/thread_bench.dir/requires: CMakeFiles/thread_bench.dir/Thread_bench.o.requires
.PHONY : CMakeFiles/thread_bench.dir/requires

CMakeFiles/thread_bench.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/thread_bench.dir/cmake_clean.cmake
.PHONY : CMakeFiles/thread_bench.dir/clean

CMakeFiles/thread_bench.dir/depend:
	cd /root/prime/base/tests && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/prime/base/tests /root/prime/base/tests /root/prime/base/tests /root/prime/base/tests /root/prime/base/tests/CMakeFiles/thread_bench.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/thread_bench.dir/depend

