# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/monica/capstone-snake-game

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/monica/capstone-snake-game/build

# Utility rule file for test-verbose.

# Include any custom commands dependencies for this target.
include cryptopp-cmake/test/CMakeFiles/test-verbose.dir/compiler_depend.make

# Include the progress variables for this target.
include cryptopp-cmake/test/CMakeFiles/test-verbose.dir/progress.make

cryptopp-cmake/test/CMakeFiles/test-verbose:
	cd /home/monica/capstone-snake-game/build/cryptopp-cmake && /usr/bin/ctest --verbose --output-on-failure

test-verbose: cryptopp-cmake/test/CMakeFiles/test-verbose
test-verbose: cryptopp-cmake/test/CMakeFiles/test-verbose.dir/build.make
.PHONY : test-verbose

# Rule to build all files generated by this target.
cryptopp-cmake/test/CMakeFiles/test-verbose.dir/build: test-verbose
.PHONY : cryptopp-cmake/test/CMakeFiles/test-verbose.dir/build

cryptopp-cmake/test/CMakeFiles/test-verbose.dir/clean:
	cd /home/monica/capstone-snake-game/build/cryptopp-cmake/test && $(CMAKE_COMMAND) -P CMakeFiles/test-verbose.dir/cmake_clean.cmake
.PHONY : cryptopp-cmake/test/CMakeFiles/test-verbose.dir/clean

cryptopp-cmake/test/CMakeFiles/test-verbose.dir/depend:
	cd /home/monica/capstone-snake-game/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/monica/capstone-snake-game /home/monica/capstone-snake-game/cryptopp-cmake/test /home/monica/capstone-snake-game/build /home/monica/capstone-snake-game/build/cryptopp-cmake/test /home/monica/capstone-snake-game/build/cryptopp-cmake/test/CMakeFiles/test-verbose.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : cryptopp-cmake/test/CMakeFiles/test-verbose.dir/depend
