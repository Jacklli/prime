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
CMAKE_SOURCE_DIR = /root/prime/base/tests/build

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/prime/base/tests/build

# Include any dependencies generated for this target.
include CMakeFiles/fork_test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/fork_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/fork_test.dir/flags.make

CMakeFiles/fork_test.dir/root/prime/base/tests/Fork_test.o: CMakeFiles/fork_test.dir/flags.make
CMakeFiles/fork_test.dir/root/prime/base/tests/Fork_test.o: /root/prime/base/tests/Fork_test.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /root/prime/base/tests/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/fork_test.dir/root/prime/base/tests/Fork_test.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/fork_test.dir/root/prime/base/tests/Fork_test.o -c /root/prime/base/tests/Fork_test.cc

CMakeFiles/fork_test.dir/root/prime/base/tests/Fork_test.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fork_test.dir/root/prime/base/tests/Fork_test.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /root/prime/base/tests/Fork_test.cc > CMakeFiles/fork_test.dir/root/prime/base/tests/Fork_test.i

CMakeFiles/fork_test.dir/root/prime/base/tests/Fork_test.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fork_test.dir/root/prime/base/tests/Fork_test.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /root/prime/base/tests/Fork_test.cc -o CMakeFiles/fork_test.dir/root/prime/base/tests/Fork_test.s

CMakeFiles/fork_test.dir/root/prime/base/tests/Fork_test.o.requires:
.PHONY : CMakeFiles/fork_test.dir/root/prime/base/tests/Fork_test.o.requires

CMakeFiles/fork_test.dir/root/prime/base/tests/Fork_test.o.provides: CMakeFiles/fork_test.dir/root/prime/base/tests/Fork_test.o.requires
	$(MAKE) -f CMakeFiles/fork_test.dir/build.make CMakeFiles/fork_test.dir/root/prime/base/tests/Fork_test.o.provides.build
.PHONY : CMakeFiles/fork_test.dir/root/prime/base/tests/Fork_test.o.provides

CMakeFiles/fork_test.dir/root/prime/base/tests/Fork_test.o.provides.build: CMakeFiles/fork_test.dir/root/prime/base/tests/Fork_test.o

# Object files for target fork_test
fork_test_OBJECTS = \
"CMakeFiles/fork_test.dir/root/prime/base/tests/Fork_test.o"

# External object files for target fork_test
fork_test_EXTERNAL_OBJECTS =

fork_test: CMakeFiles/fork_test.dir/root/prime/base/tests/Fork_test.o
fork_test: CMakeFiles/fork_test.dir/build.make
fork_test: libprime_base.a
fork_test: CMakeFiles/fork_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable fork_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fork_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/fork_test.dir/build: fork_test
.PHONY : CMakeFiles/fork_test.dir/build

CMakeFiles/fork_test.dir/requires: CMakeFiles/fork_test.dir/root/prime/base/tests/Fork_test.o.requires
.PHONY : CMakeFiles/fork_test.dir/requires

CMakeFiles/fork_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/fork_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/fork_test.dir/clean

CMakeFiles/fork_test.dir/depend:
	cd /root/prime/base/tests/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/prime/base/tests/build /root/prime/base/tests/build /root/prime/base/tests/build /root/prime/base/tests/build /root/prime/base/tests/build/CMakeFiles/fork_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/fork_test.dir/depend

