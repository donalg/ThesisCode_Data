# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/me/Documents/Uni/Subjects_2017_SP1/ThesisFiles/Thesis/CodeAndData/Code/C++/SettingUpSDLOpenGL

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/me/Documents/Uni/Subjects_2017_SP1/ThesisFiles/Thesis/CodeAndData/Code/C++/SettingUpSDLOpenGL/build

# Include any dependencies generated for this target.
include CMakeFiles/OpenGLTest.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/OpenGLTest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/OpenGLTest.dir/flags.make

CMakeFiles/OpenGLTest.dir/src/main.cpp.o: CMakeFiles/OpenGLTest.dir/flags.make
CMakeFiles/OpenGLTest.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/me/Documents/Uni/Subjects_2017_SP1/ThesisFiles/Thesis/CodeAndData/Code/C++/SettingUpSDLOpenGL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/OpenGLTest.dir/src/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OpenGLTest.dir/src/main.cpp.o -c /home/me/Documents/Uni/Subjects_2017_SP1/ThesisFiles/Thesis/CodeAndData/Code/C++/SettingUpSDLOpenGL/src/main.cpp

CMakeFiles/OpenGLTest.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OpenGLTest.dir/src/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/me/Documents/Uni/Subjects_2017_SP1/ThesisFiles/Thesis/CodeAndData/Code/C++/SettingUpSDLOpenGL/src/main.cpp > CMakeFiles/OpenGLTest.dir/src/main.cpp.i

CMakeFiles/OpenGLTest.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OpenGLTest.dir/src/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/me/Documents/Uni/Subjects_2017_SP1/ThesisFiles/Thesis/CodeAndData/Code/C++/SettingUpSDLOpenGL/src/main.cpp -o CMakeFiles/OpenGLTest.dir/src/main.cpp.s

CMakeFiles/OpenGLTest.dir/src/main.cpp.o.requires:

.PHONY : CMakeFiles/OpenGLTest.dir/src/main.cpp.o.requires

CMakeFiles/OpenGLTest.dir/src/main.cpp.o.provides: CMakeFiles/OpenGLTest.dir/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/OpenGLTest.dir/build.make CMakeFiles/OpenGLTest.dir/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/OpenGLTest.dir/src/main.cpp.o.provides

CMakeFiles/OpenGLTest.dir/src/main.cpp.o.provides.build: CMakeFiles/OpenGLTest.dir/src/main.cpp.o


CMakeFiles/OpenGLTest.dir/include/display/Display.cpp.o: CMakeFiles/OpenGLTest.dir/flags.make
CMakeFiles/OpenGLTest.dir/include/display/Display.cpp.o: ../include/display/Display.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/me/Documents/Uni/Subjects_2017_SP1/ThesisFiles/Thesis/CodeAndData/Code/C++/SettingUpSDLOpenGL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/OpenGLTest.dir/include/display/Display.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OpenGLTest.dir/include/display/Display.cpp.o -c /home/me/Documents/Uni/Subjects_2017_SP1/ThesisFiles/Thesis/CodeAndData/Code/C++/SettingUpSDLOpenGL/include/display/Display.cpp

CMakeFiles/OpenGLTest.dir/include/display/Display.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OpenGLTest.dir/include/display/Display.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/me/Documents/Uni/Subjects_2017_SP1/ThesisFiles/Thesis/CodeAndData/Code/C++/SettingUpSDLOpenGL/include/display/Display.cpp > CMakeFiles/OpenGLTest.dir/include/display/Display.cpp.i

CMakeFiles/OpenGLTest.dir/include/display/Display.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OpenGLTest.dir/include/display/Display.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/me/Documents/Uni/Subjects_2017_SP1/ThesisFiles/Thesis/CodeAndData/Code/C++/SettingUpSDLOpenGL/include/display/Display.cpp -o CMakeFiles/OpenGLTest.dir/include/display/Display.cpp.s

CMakeFiles/OpenGLTest.dir/include/display/Display.cpp.o.requires:

.PHONY : CMakeFiles/OpenGLTest.dir/include/display/Display.cpp.o.requires

CMakeFiles/OpenGLTest.dir/include/display/Display.cpp.o.provides: CMakeFiles/OpenGLTest.dir/include/display/Display.cpp.o.requires
	$(MAKE) -f CMakeFiles/OpenGLTest.dir/build.make CMakeFiles/OpenGLTest.dir/include/display/Display.cpp.o.provides.build
.PHONY : CMakeFiles/OpenGLTest.dir/include/display/Display.cpp.o.provides

CMakeFiles/OpenGLTest.dir/include/display/Display.cpp.o.provides.build: CMakeFiles/OpenGLTest.dir/include/display/Display.cpp.o


# Object files for target OpenGLTest
OpenGLTest_OBJECTS = \
"CMakeFiles/OpenGLTest.dir/src/main.cpp.o" \
"CMakeFiles/OpenGLTest.dir/include/display/Display.cpp.o"

# External object files for target OpenGLTest
OpenGLTest_EXTERNAL_OBJECTS =

OpenGLTest: CMakeFiles/OpenGLTest.dir/src/main.cpp.o
OpenGLTest: CMakeFiles/OpenGLTest.dir/include/display/Display.cpp.o
OpenGLTest: CMakeFiles/OpenGLTest.dir/build.make
OpenGLTest: /usr/lib/x86_64-linux-gnu/libGLU.so
OpenGLTest: /usr/lib/x86_64-linux-gnu/libGL.so
OpenGLTest: /usr/lib/x86_64-linux-gnu/libGLEW.so
OpenGLTest: CMakeFiles/OpenGLTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/me/Documents/Uni/Subjects_2017_SP1/ThesisFiles/Thesis/CodeAndData/Code/C++/SettingUpSDLOpenGL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable OpenGLTest"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/OpenGLTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/OpenGLTest.dir/build: OpenGLTest

.PHONY : CMakeFiles/OpenGLTest.dir/build

CMakeFiles/OpenGLTest.dir/requires: CMakeFiles/OpenGLTest.dir/src/main.cpp.o.requires
CMakeFiles/OpenGLTest.dir/requires: CMakeFiles/OpenGLTest.dir/include/display/Display.cpp.o.requires

.PHONY : CMakeFiles/OpenGLTest.dir/requires

CMakeFiles/OpenGLTest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/OpenGLTest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/OpenGLTest.dir/clean

CMakeFiles/OpenGLTest.dir/depend:
	cd /home/me/Documents/Uni/Subjects_2017_SP1/ThesisFiles/Thesis/CodeAndData/Code/C++/SettingUpSDLOpenGL/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/me/Documents/Uni/Subjects_2017_SP1/ThesisFiles/Thesis/CodeAndData/Code/C++/SettingUpSDLOpenGL /home/me/Documents/Uni/Subjects_2017_SP1/ThesisFiles/Thesis/CodeAndData/Code/C++/SettingUpSDLOpenGL /home/me/Documents/Uni/Subjects_2017_SP1/ThesisFiles/Thesis/CodeAndData/Code/C++/SettingUpSDLOpenGL/build /home/me/Documents/Uni/Subjects_2017_SP1/ThesisFiles/Thesis/CodeAndData/Code/C++/SettingUpSDLOpenGL/build /home/me/Documents/Uni/Subjects_2017_SP1/ThesisFiles/Thesis/CodeAndData/Code/C++/SettingUpSDLOpenGL/build/CMakeFiles/OpenGLTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/OpenGLTest.dir/depend

