project(OpenGL_ShaderTutorial)
cmake_minimum_required(VERSION 3.0)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++0x")

set(PROJECT_NAME OpenGLTest)

set(INCLUDES
	# DISPLAY HEADERS
	include/display/display.cpp
	include/display/display.h

	#SHADER HEADERS
	include/shader/shader.cpp
	include/shader/shader.h
	include/shader/transform.h
	include/shader/camera.h
)

set(SOURCES src/main.cpp ${INCLUDES})

FIND_PACKAGE(OpenGL REQUIRED)
FIND_PACKAGE(GLUT REQUIRED)
FIND_PACKAGE(GLEW REQUIRED)
FIND_PACKAGE(GLM REQUIRED)
FIND_PACKAGE(SDL2 REQUIRED)

INCLUDE_DIRECTORIES(${OPENGL_INCLUDE_DIR})
INCLUDE_DIRECTORIES(${GLEW_INCLUDE_DIR})
INCLUDE_DIRECTORIES(${SDL2_INCLUDE_DIR})
INCLUDE_DIRECTORIES(${GLM_INCLUDE_DIR})

add_executable(OpenGL_ShaderTutorial ${SOURCES})

target_link_libraries(OpenGL_ShaderTutorial ${SDL2_LIBRARIES} ${OPENGL_LIBRARIES} ${SDL2_LIBRARY} ${GLEW_LIBRARIES} ${GLM_LIBRARIES})