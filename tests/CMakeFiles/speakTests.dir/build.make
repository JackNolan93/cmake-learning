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
include tests/CMakeFiles/speakTests.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/CMakeFiles/speakTests.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/speakTests.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/speakTests.dir/flags.make

tests/CMakeFiles/speakTests.dir/speakTests.cpp.o: tests/CMakeFiles/speakTests.dir/flags.make
tests/CMakeFiles/speakTests.dir/speakTests.cpp.o: tests/speakTests.cpp
tests/CMakeFiles/speakTests.dir/speakTests.cpp.o: tests/CMakeFiles/speakTests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jack.nolan/developer/cmake-learning/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/speakTests.dir/speakTests.cpp.o"
	cd /Users/jack.nolan/developer/cmake-learning/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/speakTests.dir/speakTests.cpp.o -MF CMakeFiles/speakTests.dir/speakTests.cpp.o.d -o CMakeFiles/speakTests.dir/speakTests.cpp.o -c /Users/jack.nolan/developer/cmake-learning/tests/speakTests.cpp

tests/CMakeFiles/speakTests.dir/speakTests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/speakTests.dir/speakTests.cpp.i"
	cd /Users/jack.nolan/developer/cmake-learning/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jack.nolan/developer/cmake-learning/tests/speakTests.cpp > CMakeFiles/speakTests.dir/speakTests.cpp.i

tests/CMakeFiles/speakTests.dir/speakTests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/speakTests.dir/speakTests.cpp.s"
	cd /Users/jack.nolan/developer/cmake-learning/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jack.nolan/developer/cmake-learning/tests/speakTests.cpp -o CMakeFiles/speakTests.dir/speakTests.cpp.s

# Object files for target speakTests
speakTests_OBJECTS = \
"CMakeFiles/speakTests.dir/speakTests.cpp.o"

# External object files for target speakTests
speakTests_EXTERNAL_OBJECTS =

tests/speakTests: tests/CMakeFiles/speakTests.dir/speakTests.cpp.o
tests/speakTests: tests/CMakeFiles/speakTests.dir/build.make
tests/speakTests: modules/speak/libspeak.a
tests/speakTests: tests/CMakeFiles/speakTests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jack.nolan/developer/cmake-learning/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable speakTests"
	cd /Users/jack.nolan/developer/cmake-learning/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/speakTests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/speakTests.dir/build: tests/speakTests
.PHONY : tests/CMakeFiles/speakTests.dir/build

tests/CMakeFiles/speakTests.dir/clean:
	cd /Users/jack.nolan/developer/cmake-learning/tests && $(CMAKE_COMMAND) -P CMakeFiles/speakTests.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/speakTests.dir/clean

tests/CMakeFiles/speakTests.dir/depend:
	cd /Users/jack.nolan/developer/cmake-learning && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jack.nolan/developer/cmake-learning /Users/jack.nolan/developer/cmake-learning/tests /Users/jack.nolan/developer/cmake-learning /Users/jack.nolan/developer/cmake-learning/tests /Users/jack.nolan/developer/cmake-learning/tests/CMakeFiles/speakTests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/speakTests.dir/depend
