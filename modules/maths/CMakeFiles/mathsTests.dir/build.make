# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/jack.nolan/developer/cmake-learning

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/jack.nolan/developer/cmake-learning

# Include any dependencies generated for this target.
include modules/maths/CMakeFiles/mathsTests.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include modules/maths/CMakeFiles/mathsTests.dir/compiler_depend.make

# Include the progress variables for this target.
include modules/maths/CMakeFiles/mathsTests.dir/progress.make

# Include the compile flags for this target's objects.
include modules/maths/CMakeFiles/mathsTests.dir/flags.make

modules/maths/CMakeFiles/mathsTests.dir/tests/MathsTests.cpp.o: modules/maths/CMakeFiles/mathsTests.dir/flags.make
modules/maths/CMakeFiles/mathsTests.dir/tests/MathsTests.cpp.o: modules/maths/tests/MathsTests.cpp
modules/maths/CMakeFiles/mathsTests.dir/tests/MathsTests.cpp.o: modules/maths/CMakeFiles/mathsTests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jack.nolan/developer/cmake-learning/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object modules/maths/CMakeFiles/mathsTests.dir/tests/MathsTests.cpp.o"
	cd /Users/jack.nolan/developer/cmake-learning/modules/maths && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT modules/maths/CMakeFiles/mathsTests.dir/tests/MathsTests.cpp.o -MF CMakeFiles/mathsTests.dir/tests/MathsTests.cpp.o.d -o CMakeFiles/mathsTests.dir/tests/MathsTests.cpp.o -c /Users/jack.nolan/developer/cmake-learning/modules/maths/tests/MathsTests.cpp

modules/maths/CMakeFiles/mathsTests.dir/tests/MathsTests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mathsTests.dir/tests/MathsTests.cpp.i"
	cd /Users/jack.nolan/developer/cmake-learning/modules/maths && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jack.nolan/developer/cmake-learning/modules/maths/tests/MathsTests.cpp > CMakeFiles/mathsTests.dir/tests/MathsTests.cpp.i

modules/maths/CMakeFiles/mathsTests.dir/tests/MathsTests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mathsTests.dir/tests/MathsTests.cpp.s"
	cd /Users/jack.nolan/developer/cmake-learning/modules/maths && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jack.nolan/developer/cmake-learning/modules/maths/tests/MathsTests.cpp -o CMakeFiles/mathsTests.dir/tests/MathsTests.cpp.s

# Object files for target mathsTests
mathsTests_OBJECTS = \
"CMakeFiles/mathsTests.dir/tests/MathsTests.cpp.o"

# External object files for target mathsTests
mathsTests_EXTERNAL_OBJECTS =

modules/maths/mathsTests: modules/maths/CMakeFiles/mathsTests.dir/tests/MathsTests.cpp.o
modules/maths/mathsTests: modules/maths/CMakeFiles/mathsTests.dir/build.make
modules/maths/mathsTests: modules/maths/libmaths.a
modules/maths/mathsTests: modules/maths/CMakeFiles/mathsTests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jack.nolan/developer/cmake-learning/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable mathsTests"
	cd /Users/jack.nolan/developer/cmake-learning/modules/maths && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mathsTests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
modules/maths/CMakeFiles/mathsTests.dir/build: modules/maths/mathsTests
.PHONY : modules/maths/CMakeFiles/mathsTests.dir/build

modules/maths/CMakeFiles/mathsTests.dir/clean:
	cd /Users/jack.nolan/developer/cmake-learning/modules/maths && $(CMAKE_COMMAND) -P CMakeFiles/mathsTests.dir/cmake_clean.cmake
.PHONY : modules/maths/CMakeFiles/mathsTests.dir/clean

modules/maths/CMakeFiles/mathsTests.dir/depend:
	cd /Users/jack.nolan/developer/cmake-learning && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jack.nolan/developer/cmake-learning /Users/jack.nolan/developer/cmake-learning/modules/maths /Users/jack.nolan/developer/cmake-learning /Users/jack.nolan/developer/cmake-learning/modules/maths /Users/jack.nolan/developer/cmake-learning/modules/maths/CMakeFiles/mathsTests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/maths/CMakeFiles/mathsTests.dir/depend
