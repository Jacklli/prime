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
include CMakeFiles/exception_test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/exception_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/exception_test.dir/flags.make

CMakeFiles/exception_test.dir/Exception_test.o: CMakeFiles/exception_test.dir/flags.make
CMakeFiles/exception_test.dir/Exception_test.o: Exception_test.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /root/prime/base/tests/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/exception_test.dir/Exception_test.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/exception_test.dir/Exception_test.o -c /root/prime/base/tests/Exception_test.cc

CMakeFiles/exception_test.dir/Exception_test.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/exception_test.dir/Exception_test.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /root/prime/base/tests/Exception_test.cc > CMakeFiles/exception_test.dir/Exception_test.i

CMakeFiles/exception_test.dir/Exception_test.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/exception_test.dir/Exception_test.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /root/prime/base/tests/Exception_test.cc -o CMakeFiles/exception_test.dir/Exception_test.s

CMakeFiles/exception_test.dir/Exception_test.o.requires:
.PHONY : CMakeFiles/exception_test.dir/Exception_test.o.requires

CMakeFiles/exception_test.dir/Exception_test.o.provides: CMakeFiles/exception_test.dir/Exception_test.o.requires
	$(MAKE) -f CMakeFiles/exception_test.dir/build.make CMakeFiles/exception_test.dir/Exception_test.o.provides.build
.PHONY : CMakeFiles/exception_test.dir/Exception_test.o.provides

CMakeFiles/exception_test.dir/Exception_test.o.provides.build: CMakeFiles/exception_test.dir/Exception_test.o

# Object files for target exception_test
exception_test_OBJECTS = \
"CMakeFiles/exception_test.dir/Exception_test.o"

# External object files for target exception_test
exception_test_EXTERNAL_OBJECTS =

exception_test: CMakeFiles/exception_test.dir/Exception_test.o
exception_test: CMakeFiles/exception_test.dir/build.make
exception_test: libprime_base.a
exception_test: CMakeFiles/exception_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable exception_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/exception_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/exception_test.dir/build: exception_test
.PHONY : CMakeFiles/exception_test.dir/build

CMakeFiles/exception_test.dir/requires: CMakeFiles/exception_test.dir/Exception_test.o.requires
.PHONY : CMakeFiles/exception_test.dir/requires

CMakeFiles/exception_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/exception_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/exception_test.dir/clean

CMakeFiles/exception_test.dir/depend:
	cd /root/prime/base/tests && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/prime/base/tests /root/prime/base/tests /root/prime/base/tests /root/prime/base/tests /root/prime/base/tests/CMakeFiles/exception_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/exception_test.dir/depend

