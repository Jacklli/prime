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
CMAKE_SOURCE_DIR = /root/prime/examples

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/prime/examples

# Include any dependencies generated for this target.
include CMakeFiles/simple_allinone.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/simple_allinone.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/simple_allinone.dir/flags.make

CMakeFiles/simple_allinone.dir/allinone/allinone.o: CMakeFiles/simple_allinone.dir/flags.make
CMakeFiles/simple_allinone.dir/allinone/allinone.o: allinone/allinone.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /root/prime/examples/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/simple_allinone.dir/allinone/allinone.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/simple_allinone.dir/allinone/allinone.o -c /root/prime/examples/allinone/allinone.cc

CMakeFiles/simple_allinone.dir/allinone/allinone.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simple_allinone.dir/allinone/allinone.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /root/prime/examples/allinone/allinone.cc > CMakeFiles/simple_allinone.dir/allinone/allinone.i

CMakeFiles/simple_allinone.dir/allinone/allinone.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simple_allinone.dir/allinone/allinone.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /root/prime/examples/allinone/allinone.cc -o CMakeFiles/simple_allinone.dir/allinone/allinone.s

CMakeFiles/simple_allinone.dir/allinone/allinone.o.requires:
.PHONY : CMakeFiles/simple_allinone.dir/allinone/allinone.o.requires

CMakeFiles/simple_allinone.dir/allinone/allinone.o.provides: CMakeFiles/simple_allinone.dir/allinone/allinone.o.requires
	$(MAKE) -f CMakeFiles/simple_allinone.dir/build.make CMakeFiles/simple_allinone.dir/allinone/allinone.o.provides.build
.PHONY : CMakeFiles/simple_allinone.dir/allinone/allinone.o.provides

CMakeFiles/simple_allinone.dir/allinone/allinone.o.provides.build: CMakeFiles/simple_allinone.dir/allinone/allinone.o

CMakeFiles/simple_allinone.dir/chargen/chargen.o: CMakeFiles/simple_allinone.dir/flags.make
CMakeFiles/simple_allinone.dir/chargen/chargen.o: chargen/chargen.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /root/prime/examples/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/simple_allinone.dir/chargen/chargen.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/simple_allinone.dir/chargen/chargen.o -c /root/prime/examples/chargen/chargen.cc

CMakeFiles/simple_allinone.dir/chargen/chargen.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simple_allinone.dir/chargen/chargen.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /root/prime/examples/chargen/chargen.cc > CMakeFiles/simple_allinone.dir/chargen/chargen.i

CMakeFiles/simple_allinone.dir/chargen/chargen.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simple_allinone.dir/chargen/chargen.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /root/prime/examples/chargen/chargen.cc -o CMakeFiles/simple_allinone.dir/chargen/chargen.s

CMakeFiles/simple_allinone.dir/chargen/chargen.o.requires:
.PHONY : CMakeFiles/simple_allinone.dir/chargen/chargen.o.requires

CMakeFiles/simple_allinone.dir/chargen/chargen.o.provides: CMakeFiles/simple_allinone.dir/chargen/chargen.o.requires
	$(MAKE) -f CMakeFiles/simple_allinone.dir/build.make CMakeFiles/simple_allinone.dir/chargen/chargen.o.provides.build
.PHONY : CMakeFiles/simple_allinone.dir/chargen/chargen.o.provides

CMakeFiles/simple_allinone.dir/chargen/chargen.o.provides.build: CMakeFiles/simple_allinone.dir/chargen/chargen.o

CMakeFiles/simple_allinone.dir/daytime/daytime.o: CMakeFiles/simple_allinone.dir/flags.make
CMakeFiles/simple_allinone.dir/daytime/daytime.o: daytime/daytime.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /root/prime/examples/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/simple_allinone.dir/daytime/daytime.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/simple_allinone.dir/daytime/daytime.o -c /root/prime/examples/daytime/daytime.cc

CMakeFiles/simple_allinone.dir/daytime/daytime.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simple_allinone.dir/daytime/daytime.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /root/prime/examples/daytime/daytime.cc > CMakeFiles/simple_allinone.dir/daytime/daytime.i

CMakeFiles/simple_allinone.dir/daytime/daytime.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simple_allinone.dir/daytime/daytime.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /root/prime/examples/daytime/daytime.cc -o CMakeFiles/simple_allinone.dir/daytime/daytime.s

CMakeFiles/simple_allinone.dir/daytime/daytime.o.requires:
.PHONY : CMakeFiles/simple_allinone.dir/daytime/daytime.o.requires

CMakeFiles/simple_allinone.dir/daytime/daytime.o.provides: CMakeFiles/simple_allinone.dir/daytime/daytime.o.requires
	$(MAKE) -f CMakeFiles/simple_allinone.dir/build.make CMakeFiles/simple_allinone.dir/daytime/daytime.o.provides.build
.PHONY : CMakeFiles/simple_allinone.dir/daytime/daytime.o.provides

CMakeFiles/simple_allinone.dir/daytime/daytime.o.provides.build: CMakeFiles/simple_allinone.dir/daytime/daytime.o

CMakeFiles/simple_allinone.dir/discard/discard.o: CMakeFiles/simple_allinone.dir/flags.make
CMakeFiles/simple_allinone.dir/discard/discard.o: discard/discard.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /root/prime/examples/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/simple_allinone.dir/discard/discard.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/simple_allinone.dir/discard/discard.o -c /root/prime/examples/discard/discard.cc

CMakeFiles/simple_allinone.dir/discard/discard.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simple_allinone.dir/discard/discard.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /root/prime/examples/discard/discard.cc > CMakeFiles/simple_allinone.dir/discard/discard.i

CMakeFiles/simple_allinone.dir/discard/discard.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simple_allinone.dir/discard/discard.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /root/prime/examples/discard/discard.cc -o CMakeFiles/simple_allinone.dir/discard/discard.s

CMakeFiles/simple_allinone.dir/discard/discard.o.requires:
.PHONY : CMakeFiles/simple_allinone.dir/discard/discard.o.requires

CMakeFiles/simple_allinone.dir/discard/discard.o.provides: CMakeFiles/simple_allinone.dir/discard/discard.o.requires
	$(MAKE) -f CMakeFiles/simple_allinone.dir/build.make CMakeFiles/simple_allinone.dir/discard/discard.o.provides.build
.PHONY : CMakeFiles/simple_allinone.dir/discard/discard.o.provides

CMakeFiles/simple_allinone.dir/discard/discard.o.provides.build: CMakeFiles/simple_allinone.dir/discard/discard.o

CMakeFiles/simple_allinone.dir/echo/echo.o: CMakeFiles/simple_allinone.dir/flags.make
CMakeFiles/simple_allinone.dir/echo/echo.o: echo/echo.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /root/prime/examples/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/simple_allinone.dir/echo/echo.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/simple_allinone.dir/echo/echo.o -c /root/prime/examples/echo/echo.cc

CMakeFiles/simple_allinone.dir/echo/echo.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simple_allinone.dir/echo/echo.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /root/prime/examples/echo/echo.cc > CMakeFiles/simple_allinone.dir/echo/echo.i

CMakeFiles/simple_allinone.dir/echo/echo.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simple_allinone.dir/echo/echo.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /root/prime/examples/echo/echo.cc -o CMakeFiles/simple_allinone.dir/echo/echo.s

CMakeFiles/simple_allinone.dir/echo/echo.o.requires:
.PHONY : CMakeFiles/simple_allinone.dir/echo/echo.o.requires

CMakeFiles/simple_allinone.dir/echo/echo.o.provides: CMakeFiles/simple_allinone.dir/echo/echo.o.requires
	$(MAKE) -f CMakeFiles/simple_allinone.dir/build.make CMakeFiles/simple_allinone.dir/echo/echo.o.provides.build
.PHONY : CMakeFiles/simple_allinone.dir/echo/echo.o.provides

CMakeFiles/simple_allinone.dir/echo/echo.o.provides.build: CMakeFiles/simple_allinone.dir/echo/echo.o

CMakeFiles/simple_allinone.dir/time/time.o: CMakeFiles/simple_allinone.dir/flags.make
CMakeFiles/simple_allinone.dir/time/time.o: time/time.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /root/prime/examples/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/simple_allinone.dir/time/time.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/simple_allinone.dir/time/time.o -c /root/prime/examples/time/time.cc

CMakeFiles/simple_allinone.dir/time/time.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simple_allinone.dir/time/time.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /root/prime/examples/time/time.cc > CMakeFiles/simple_allinone.dir/time/time.i

CMakeFiles/simple_allinone.dir/time/time.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simple_allinone.dir/time/time.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /root/prime/examples/time/time.cc -o CMakeFiles/simple_allinone.dir/time/time.s

CMakeFiles/simple_allinone.dir/time/time.o.requires:
.PHONY : CMakeFiles/simple_allinone.dir/time/time.o.requires

CMakeFiles/simple_allinone.dir/time/time.o.provides: CMakeFiles/simple_allinone.dir/time/time.o.requires
	$(MAKE) -f CMakeFiles/simple_allinone.dir/build.make CMakeFiles/simple_allinone.dir/time/time.o.provides.build
.PHONY : CMakeFiles/simple_allinone.dir/time/time.o.provides

CMakeFiles/simple_allinone.dir/time/time.o.provides.build: CMakeFiles/simple_allinone.dir/time/time.o

# Object files for target simple_allinone
simple_allinone_OBJECTS = \
"CMakeFiles/simple_allinone.dir/allinone/allinone.o" \
"CMakeFiles/simple_allinone.dir/chargen/chargen.o" \
"CMakeFiles/simple_allinone.dir/daytime/daytime.o" \
"CMakeFiles/simple_allinone.dir/discard/discard.o" \
"CMakeFiles/simple_allinone.dir/echo/echo.o" \
"CMakeFiles/simple_allinone.dir/time/time.o"

# External object files for target simple_allinone
simple_allinone_EXTERNAL_OBJECTS =

simple_allinone: CMakeFiles/simple_allinone.dir/allinone/allinone.o
simple_allinone: CMakeFiles/simple_allinone.dir/chargen/chargen.o
simple_allinone: CMakeFiles/simple_allinone.dir/daytime/daytime.o
simple_allinone: CMakeFiles/simple_allinone.dir/discard/discard.o
simple_allinone: CMakeFiles/simple_allinone.dir/echo/echo.o
simple_allinone: CMakeFiles/simple_allinone.dir/time/time.o
simple_allinone: CMakeFiles/simple_allinone.dir/build.make
simple_allinone: libprime_net.a
simple_allinone: libprime_base.a
simple_allinone: CMakeFiles/simple_allinone.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable simple_allinone"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/simple_allinone.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/simple_allinone.dir/build: simple_allinone
.PHONY : CMakeFiles/simple_allinone.dir/build

CMakeFiles/simple_allinone.dir/requires: CMakeFiles/simple_allinone.dir/allinone/allinone.o.requires
CMakeFiles/simple_allinone.dir/requires: CMakeFiles/simple_allinone.dir/chargen/chargen.o.requires
CMakeFiles/simple_allinone.dir/requires: CMakeFiles/simple_allinone.dir/daytime/daytime.o.requires
CMakeFiles/simple_allinone.dir/requires: CMakeFiles/simple_allinone.dir/discard/discard.o.requires
CMakeFiles/simple_allinone.dir/requires: CMakeFiles/simple_allinone.dir/echo/echo.o.requires
CMakeFiles/simple_allinone.dir/requires: CMakeFiles/simple_allinone.dir/time/time.o.requires
.PHONY : CMakeFiles/simple_allinone.dir/requires

CMakeFiles/simple_allinone.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/simple_allinone.dir/cmake_clean.cmake
.PHONY : CMakeFiles/simple_allinone.dir/clean

CMakeFiles/simple_allinone.dir/depend:
	cd /root/prime/examples && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/prime/examples /root/prime/examples /root/prime/examples /root/prime/examples /root/prime/examples/CMakeFiles/simple_allinone.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/simple_allinone.dir/depend

