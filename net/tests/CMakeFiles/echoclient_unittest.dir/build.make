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
CMAKE_SOURCE_DIR = /root/prime/net/tests

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/prime/net/tests

# Include any dependencies generated for this target.
include CMakeFiles/echoclient_unittest.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/echoclient_unittest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/echoclient_unittest.dir/flags.make

CMakeFiles/echoclient_unittest.dir/EchoClient_unittest.o: CMakeFiles/echoclient_unittest.dir/flags.make
CMakeFiles/echoclient_unittest.dir/EchoClient_unittest.o: EchoClient_unittest.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /root/prime/net/tests/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/echoclient_unittest.dir/EchoClient_unittest.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/echoclient_unittest.dir/EchoClient_unittest.o -c /root/prime/net/tests/EchoClient_unittest.cc

CMakeFiles/echoclient_unittest.dir/EchoClient_unittest.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/echoclient_unittest.dir/EchoClient_unittest.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /root/prime/net/tests/EchoClient_unittest.cc > CMakeFiles/echoclient_unittest.dir/EchoClient_unittest.i

CMakeFiles/echoclient_unittest.dir/EchoClient_unittest.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/echoclient_unittest.dir/EchoClient_unittest.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /root/prime/net/tests/EchoClient_unittest.cc -o CMakeFiles/echoclient_unittest.dir/EchoClient_unittest.s

CMakeFiles/echoclient_unittest.dir/EchoClient_unittest.o.requires:
.PHONY : CMakeFiles/echoclient_unittest.dir/EchoClient_unittest.o.requires

CMakeFiles/echoclient_unittest.dir/EchoClient_unittest.o.provides: CMakeFiles/echoclient_unittest.dir/EchoClient_unittest.o.requires
	$(MAKE) -f CMakeFiles/echoclient_unittest.dir/build.make CMakeFiles/echoclient_unittest.dir/EchoClient_unittest.o.provides.build
.PHONY : CMakeFiles/echoclient_unittest.dir/EchoClient_unittest.o.provides

CMakeFiles/echoclient_unittest.dir/EchoClient_unittest.o.provides.build: CMakeFiles/echoclient_unittest.dir/EchoClient_unittest.o

# Object files for target echoclient_unittest
echoclient_unittest_OBJECTS = \
"CMakeFiles/echoclient_unittest.dir/EchoClient_unittest.o"

# External object files for target echoclient_unittest
echoclient_unittest_EXTERNAL_OBJECTS =

echoclient_unittest: CMakeFiles/echoclient_unittest.dir/EchoClient_unittest.o
echoclient_unittest: CMakeFiles/echoclient_unittest.dir/build.make
echoclient_unittest: CMakeFiles/echoclient_unittest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable echoclient_unittest"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/echoclient_unittest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/echoclient_unittest.dir/build: echoclient_unittest
.PHONY : CMakeFiles/echoclient_unittest.dir/build

CMakeFiles/echoclient_unittest.dir/requires: CMakeFiles/echoclient_unittest.dir/EchoClient_unittest.o.requires
.PHONY : CMakeFiles/echoclient_unittest.dir/requires

CMakeFiles/echoclient_unittest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/echoclient_unittest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/echoclient_unittest.dir/clean

CMakeFiles/echoclient_unittest.dir/depend:
	cd /root/prime/net/tests && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/prime/net/tests /root/prime/net/tests /root/prime/net/tests /root/prime/net/tests /root/prime/net/tests/CMakeFiles/echoclient_unittest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/echoclient_unittest.dir/depend

