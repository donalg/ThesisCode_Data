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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.7.2_1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.7.2_1/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/donalglavin/GitLabThesisDoc/Thesis/CodeAndData/Code/C++/TutorialShaders

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/donalglavin/GitLabThesisDoc/Thesis/CodeAndData/Code/C++/TutorialShaders/build

# Include any dependencies generated for this target.
include CMakeFiles/OpenGL_ShaderTutorial.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/OpenGL_ShaderTutorial.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/OpenGL_ShaderTutorial.dir/flags.make

CMakeFiles/OpenGL_ShaderTutorial.dir/src/main.cpp.o: CMakeFiles/OpenGL_ShaderTutorial.dir/flags.make
CMakeFiles/OpenGL_ShaderTutorial.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/donalglavin/GitLabThesisDoc/Thesis/CodeAndData/Code/C++/TutorialShaders/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/OpenGL_ShaderTutorial.dir/src/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OpenGL_ShaderTutorial.dir/src/main.cpp.o -c /Users/donalglavin/GitLabThesisDoc/Thesis/CodeAndData/Code/C++/TutorialShaders/src/main.cpp

CMakeFiles/OpenGL_ShaderTutorial.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OpenGL_ShaderTutorial.dir/src/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/donalglavin/GitLabThesisDoc/Thesis/CodeAndData/Code/C++/TutorialShaders/src/main.cpp > CMakeFiles/OpenGL_ShaderTutorial.dir/src/main.cpp.i

CMakeFiles/OpenGL_ShaderTutorial.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OpenGL_ShaderTutorial.dir/src/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/donalglavin/GitLabThesisDoc/Thesis/CodeAndData/Code/C++/TutorialShaders/src/main.cpp -o CMakeFiles/OpenGL_ShaderTutorial.dir/src/main.cpp.s

CMakeFiles/OpenGL_ShaderTutorial.dir/src/main.cpp.o.requires:

.PHONY : CMakeFiles/OpenGL_ShaderTutorial.dir/src/main.cpp.o.requires

CMakeFiles/OpenGL_ShaderTutorial.dir/src/main.cpp.o.provides: CMakeFiles/OpenGL_ShaderTutorial.dir/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/OpenGL_ShaderTutorial.dir/build.make CMakeFiles/OpenGL_ShaderTutorial.dir/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/OpenGL_ShaderTutorial.dir/src/main.cpp.o.provides

CMakeFiles/OpenGL_ShaderTutorial.dir/src/main.cpp.o.provides.build: CMakeFiles/OpenGL_ShaderTutorial.dir/src/main.cpp.o


CMakeFiles/OpenGL_ShaderTutorial.dir/include/display/display.cpp.o: CMakeFiles/OpenGL_ShaderTutorial.dir/flags.make
CMakeFiles/OpenGL_ShaderTutorial.dir/include/display/display.cpp.o: ../include/display/display.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/donalglavin/GitLabThesisDoc/Thesis/CodeAndData/Code/C++/TutorialShaders/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/OpenGL_ShaderTutorial.dir/include/display/display.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OpenGL_ShaderTutorial.dir/include/display/display.cpp.o -c /Users/donalglavin/GitLabThesisDoc/Thesis/CodeAndData/Code/C++/TutorialShaders/include/display/display.cpp

CMakeFiles/OpenGL_ShaderTutorial.dir/include/display/display.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OpenGL_ShaderTutorial.dir/include/display/display.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/donalglavin/GitLabThesisDoc/Thesis/CodeAndData/Code/C++/TutorialShaders/include/display/display.cpp > CMakeFiles/OpenGL_ShaderTutorial.dir/include/display/display.cpp.i

CMakeFiles/OpenGL_ShaderTutorial.dir/include/display/display.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OpenGL_ShaderTutorial.dir/include/display/display.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/donalglavin/GitLabThesisDoc/Thesis/CodeAndData/Code/C++/TutorialShaders/include/display/display.cpp -o CMakeFiles/OpenGL_ShaderTutorial.dir/include/display/display.cpp.s

CMakeFiles/OpenGL_ShaderTutorial.dir/include/display/display.cpp.o.requires:

.PHONY : CMakeFiles/OpenGL_ShaderTutorial.dir/include/display/display.cpp.o.requires

CMakeFiles/OpenGL_ShaderTutorial.dir/include/display/display.cpp.o.provides: CMakeFiles/OpenGL_ShaderTutorial.dir/include/display/display.cpp.o.requires
	$(MAKE) -f CMakeFiles/OpenGL_ShaderTutorial.dir/build.make CMakeFiles/OpenGL_ShaderTutorial.dir/include/display/display.cpp.o.provides.build
.PHONY : CMakeFiles/OpenGL_ShaderTutorial.dir/include/display/display.cpp.o.provides

CMakeFiles/OpenGL_ShaderTutorial.dir/include/display/display.cpp.o.provides.build: CMakeFiles/OpenGL_ShaderTutorial.dir/include/display/display.cpp.o


CMakeFiles/OpenGL_ShaderTutorial.dir/include/shader/shader.cpp.o: CMakeFiles/OpenGL_ShaderTutorial.dir/flags.make
CMakeFiles/OpenGL_ShaderTutorial.dir/include/shader/shader.cpp.o: ../include/shader/shader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/donalglavin/GitLabThesisDoc/Thesis/CodeAndData/Code/C++/TutorialShaders/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/OpenGL_ShaderTutorial.dir/include/shader/shader.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OpenGL_ShaderTutorial.dir/include/shader/shader.cpp.o -c /Users/donalglavin/GitLabThesisDoc/Thesis/CodeAndData/Code/C++/TutorialShaders/include/shader/shader.cpp

CMakeFiles/OpenGL_ShaderTutorial.dir/include/shader/shader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OpenGL_ShaderTutorial.dir/include/shader/shader.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/donalglavin/GitLabThesisDoc/Thesis/CodeAndData/Code/C++/TutorialShaders/include/shader/shader.cpp > CMakeFiles/OpenGL_ShaderTutorial.dir/include/shader/shader.cpp.i

CMakeFiles/OpenGL_ShaderTutorial.dir/include/shader/shader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OpenGL_ShaderTutorial.dir/include/shader/shader.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/donalglavin/GitLabThesisDoc/Thesis/CodeAndData/Code/C++/TutorialShaders/include/shader/shader.cpp -o CMakeFiles/OpenGL_ShaderTutorial.dir/include/shader/shader.cpp.s

CMakeFiles/OpenGL_ShaderTutorial.dir/include/shader/shader.cpp.o.requires:

.PHONY : CMakeFiles/OpenGL_ShaderTutorial.dir/include/shader/shader.cpp.o.requires

CMakeFiles/OpenGL_ShaderTutorial.dir/include/shader/shader.cpp.o.provides: CMakeFiles/OpenGL_ShaderTutorial.dir/include/shader/shader.cpp.o.requires
	$(MAKE) -f CMakeFiles/OpenGL_ShaderTutorial.dir/build.make CMakeFiles/OpenGL_ShaderTutorial.dir/include/shader/shader.cpp.o.provides.build
.PHONY : CMakeFiles/OpenGL_ShaderTutorial.dir/include/shader/shader.cpp.o.provides

CMakeFiles/OpenGL_ShaderTutorial.dir/include/shader/shader.cpp.o.provides.build: CMakeFiles/OpenGL_ShaderTutorial.dir/include/shader/shader.cpp.o


# Object files for target OpenGL_ShaderTutorial
OpenGL_ShaderTutorial_OBJECTS = \
"CMakeFiles/OpenGL_ShaderTutorial.dir/src/main.cpp.o" \
"CMakeFiles/OpenGL_ShaderTutorial.dir/include/display/display.cpp.o" \
"CMakeFiles/OpenGL_ShaderTutorial.dir/include/shader/shader.cpp.o"

# External object files for target OpenGL_ShaderTutorial
OpenGL_ShaderTutorial_EXTERNAL_OBJECTS =

OpenGL_ShaderTutorial: CMakeFiles/OpenGL_ShaderTutorial.dir/src/main.cpp.o
OpenGL_ShaderTutorial: CMakeFiles/OpenGL_ShaderTutorial.dir/include/display/display.cpp.o
OpenGL_ShaderTutorial: CMakeFiles/OpenGL_ShaderTutorial.dir/include/shader/shader.cpp.o
OpenGL_ShaderTutorial: CMakeFiles/OpenGL_ShaderTutorial.dir/build.make
OpenGL_ShaderTutorial: /usr/local/lib/libGLEW.dylib
OpenGL_ShaderTutorial: CMakeFiles/OpenGL_ShaderTutorial.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/donalglavin/GitLabThesisDoc/Thesis/CodeAndData/Code/C++/TutorialShaders/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable OpenGL_ShaderTutorial"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/OpenGL_ShaderTutorial.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/OpenGL_ShaderTutorial.dir/build: OpenGL_ShaderTutorial

.PHONY : CMakeFiles/OpenGL_ShaderTutorial.dir/build

CMakeFiles/OpenGL_ShaderTutorial.dir/requires: CMakeFiles/OpenGL_ShaderTutorial.dir/src/main.cpp.o.requires
CMakeFiles/OpenGL_ShaderTutorial.dir/requires: CMakeFiles/OpenGL_ShaderTutorial.dir/include/display/display.cpp.o.requires
CMakeFiles/OpenGL_ShaderTutorial.dir/requires: CMakeFiles/OpenGL_ShaderTutorial.dir/include/shader/shader.cpp.o.requires

.PHONY : CMakeFiles/OpenGL_ShaderTutorial.dir/requires

CMakeFiles/OpenGL_ShaderTutorial.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/OpenGL_ShaderTutorial.dir/cmake_clean.cmake
.PHONY : CMakeFiles/OpenGL_ShaderTutorial.dir/clean

CMakeFiles/OpenGL_ShaderTutorial.dir/depend:
	cd /Users/donalglavin/GitLabThesisDoc/Thesis/CodeAndData/Code/C++/TutorialShaders/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/donalglavin/GitLabThesisDoc/Thesis/CodeAndData/Code/C++/TutorialShaders /Users/donalglavin/GitLabThesisDoc/Thesis/CodeAndData/Code/C++/TutorialShaders /Users/donalglavin/GitLabThesisDoc/Thesis/CodeAndData/Code/C++/TutorialShaders/build /Users/donalglavin/GitLabThesisDoc/Thesis/CodeAndData/Code/C++/TutorialShaders/build /Users/donalglavin/GitLabThesisDoc/Thesis/CodeAndData/Code/C++/TutorialShaders/build/CMakeFiles/OpenGL_ShaderTutorial.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/OpenGL_ShaderTutorial.dir/depend

