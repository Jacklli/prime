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
CMAKE_SOURCE_DIR = /root/prime/examples/pricache

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/prime/examples/pricache

# Include any dependencies generated for this target.
include CMakeFiles/pricache.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/pricache.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pricache.dir/flags.make

CMakeFiles/pricache.dir/server.o: CMakeFiles/pricache.dir/flags.make
CMakeFiles/pricache.dir/server.o: server.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /root/prime/examples/pricache/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/pricache.dir/server.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/pricache.dir/server.o -c /root/prime/examples/pricache/server.cc

CMakeFiles/pricache.dir/server.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pricache.dir/server.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /root/prime/examples/pricache/server.cc > CMakeFiles/pricache.dir/server.i

CMakeFiles/pricache.dir/server.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pricache.dir/server.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /root/prime/examples/pricache/server.cc -o CMakeFiles/pricache.dir/server.s

CMakeFiles/pricache.dir/server.o.requires:
.PHONY : CMakeFiles/pricache.dir/server.o.requires

CMakeFiles/pricache.dir/server.o.provides: CMakeFiles/pricache.dir/server.o.requires
	$(MAKE) -f CMakeFiles/pricache.dir/build.make CMakeFiles/pricache.dir/server.o.provides.build
.PHONY : CMakeFiles/pricache.dir/server.o.provides

CMakeFiles/pricache.dir/server.o.provides.build: CMakeFiles/pricache.dir/server.o

# Object files for target pricache
pricache_OBJECTS = \
"CMakeFiles/pricache.dir/server.o"

# External object files for target pricache
pricache_EXTERNAL_OBJECTS =

pricache: CMakeFiles/pricache.dir/server.o
pricache: CMakeFiles/pricache.dir/build.make
pricache: libprime_net.a
pricache: libprime_base.a
pricache: CMakeFiles/pricache.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable pricache"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pricache.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pricache.dir/build: pricache
.PHONY : CMakeFiles/pricache.dir/build

CMakeFiles/pricache.dir/requires: CMakeFiles/pricache.dir/server.o.requires
.PHONY : CMakeFiles/pricache.dir/requires

CMakeFiles/pricache.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/pricache.dir/cmake_clean.cmake
.PHONY : CMakeFiles/pricache.dir/clean

CMakeFiles/pricache.dir/depend:
	cd /root/prime/examples/pricache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/prime/examples/pricache /root/prime/examples/pricache /root/prime/examples/pricache /root/prime/examples/pricache /root/prime/examples/pricache/CMakeFiles/pricache.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/pricache.dir/depend

