# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

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
CMAKE_SOURCE_DIR = /home/debian/final/DMALinuxTest

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/debian/final/DMALinuxTest

# Include any dependencies generated for this target.
include CMakeFiles/backsub_test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/backsub_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/backsub_test.dir/flags.make

CMakeFiles/backsub_test.dir/feature.cpp.o: CMakeFiles/backsub_test.dir/flags.make
CMakeFiles/backsub_test.dir/feature.cpp.o: feature.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/debian/final/DMALinuxTest/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/backsub_test.dir/feature.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/backsub_test.dir/feature.cpp.o -c /home/debian/final/DMALinuxTest/feature.cpp

CMakeFiles/backsub_test.dir/feature.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/backsub_test.dir/feature.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/debian/final/DMALinuxTest/feature.cpp > CMakeFiles/backsub_test.dir/feature.cpp.i

CMakeFiles/backsub_test.dir/feature.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/backsub_test.dir/feature.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/debian/final/DMALinuxTest/feature.cpp -o CMakeFiles/backsub_test.dir/feature.cpp.s

CMakeFiles/backsub_test.dir/feature.cpp.o.requires:

.PHONY : CMakeFiles/backsub_test.dir/feature.cpp.o.requires

CMakeFiles/backsub_test.dir/feature.cpp.o.provides: CMakeFiles/backsub_test.dir/feature.cpp.o.requires
	$(MAKE) -f CMakeFiles/backsub_test.dir/build.make CMakeFiles/backsub_test.dir/feature.cpp.o.provides.build
.PHONY : CMakeFiles/backsub_test.dir/feature.cpp.o.provides

CMakeFiles/backsub_test.dir/feature.cpp.o.provides.build: CMakeFiles/backsub_test.dir/feature.cpp.o


CMakeFiles/backsub_test.dir/axidma.c.o: CMakeFiles/backsub_test.dir/flags.make
CMakeFiles/backsub_test.dir/axidma.c.o: axidma.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/debian/final/DMALinuxTest/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/backsub_test.dir/axidma.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/backsub_test.dir/axidma.c.o   -c /home/debian/final/DMALinuxTest/axidma.c

CMakeFiles/backsub_test.dir/axidma.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/backsub_test.dir/axidma.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/debian/final/DMALinuxTest/axidma.c > CMakeFiles/backsub_test.dir/axidma.c.i

CMakeFiles/backsub_test.dir/axidma.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/backsub_test.dir/axidma.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/debian/final/DMALinuxTest/axidma.c -o CMakeFiles/backsub_test.dir/axidma.c.s

CMakeFiles/backsub_test.dir/axidma.c.o.requires:

.PHONY : CMakeFiles/backsub_test.dir/axidma.c.o.requires

CMakeFiles/backsub_test.dir/axidma.c.o.provides: CMakeFiles/backsub_test.dir/axidma.c.o.requires
	$(MAKE) -f CMakeFiles/backsub_test.dir/build.make CMakeFiles/backsub_test.dir/axidma.c.o.provides.build
.PHONY : CMakeFiles/backsub_test.dir/axidma.c.o.provides

CMakeFiles/backsub_test.dir/axidma.c.o.provides.build: CMakeFiles/backsub_test.dir/axidma.c.o


# Object files for target backsub_test
backsub_test_OBJECTS = \
"CMakeFiles/backsub_test.dir/feature.cpp.o" \
"CMakeFiles/backsub_test.dir/axidma.c.o"

# External object files for target backsub_test
backsub_test_EXTERNAL_OBJECTS =

backsub_test: CMakeFiles/backsub_test.dir/feature.cpp.o
backsub_test: CMakeFiles/backsub_test.dir/axidma.c.o
backsub_test: CMakeFiles/backsub_test.dir/build.make
backsub_test: CMakeFiles/backsub_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/debian/final/DMALinuxTest/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable backsub_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/backsub_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/backsub_test.dir/build: backsub_test

.PHONY : CMakeFiles/backsub_test.dir/build

CMakeFiles/backsub_test.dir/requires: CMakeFiles/backsub_test.dir/feature.cpp.o.requires
CMakeFiles/backsub_test.dir/requires: CMakeFiles/backsub_test.dir/axidma.c.o.requires

.PHONY : CMakeFiles/backsub_test.dir/requires

CMakeFiles/backsub_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/backsub_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/backsub_test.dir/clean

CMakeFiles/backsub_test.dir/depend:
	cd /home/debian/final/DMALinuxTest && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/debian/final/DMALinuxTest /home/debian/final/DMALinuxTest /home/debian/final/DMALinuxTest /home/debian/final/DMALinuxTest /home/debian/final/DMALinuxTest/CMakeFiles/backsub_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/backsub_test.dir/depend

