# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/runa/Desktop/PhoscoinGui

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/runa/Desktop/PhoscoinGui/build/release

# Utility rule file for PhoscoinCli_autogen.

# Include the progress variables for this target.
include CMakeFiles/PhoscoinCli_autogen.dir/progress.make

CMakeFiles/PhoscoinCli_autogen:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/runa/Desktop/PhoscoinGui/build/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic MOC for target PhoscoinCli"
	/usr/local/bin/cmake -E cmake_autogen /home/runa/Desktop/PhoscoinGui/build/release/CMakeFiles/PhoscoinCli_autogen.dir Release

PhoscoinCli_autogen: CMakeFiles/PhoscoinCli_autogen
PhoscoinCli_autogen: CMakeFiles/PhoscoinCli_autogen.dir/build.make

.PHONY : PhoscoinCli_autogen

# Rule to build all files generated by this target.
CMakeFiles/PhoscoinCli_autogen.dir/build: PhoscoinCli_autogen

.PHONY : CMakeFiles/PhoscoinCli_autogen.dir/build

CMakeFiles/PhoscoinCli_autogen.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/PhoscoinCli_autogen.dir/cmake_clean.cmake
.PHONY : CMakeFiles/PhoscoinCli_autogen.dir/clean

CMakeFiles/PhoscoinCli_autogen.dir/depend:
	cd /home/runa/Desktop/PhoscoinGui/build/release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/runa/Desktop/PhoscoinGui /home/runa/Desktop/PhoscoinGui /home/runa/Desktop/PhoscoinGui/build/release /home/runa/Desktop/PhoscoinGui/build/release /home/runa/Desktop/PhoscoinGui/build/release/CMakeFiles/PhoscoinCli_autogen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/PhoscoinCli_autogen.dir/depend
