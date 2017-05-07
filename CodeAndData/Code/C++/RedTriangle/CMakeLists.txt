

project(SDL_OpenGLprogram)
cmake_minimum_required(VERSION 3.0)

set(project SDL_OpenGL_TexturedTriangle)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++0x")

set(INCLUDES
	# DISPLAY HEADERS
	includes/display/display.cpp
	includes/display/display.h

	#SHADER HEADERS
	includes/shader/shader.cpp
	includes/shader/shader.h

	#MESH HEADERS
	includes/mesh/mesh.h
	includes/mesh/mesh.cpp

	#IMAGE HANDLING
	includes/stb_image/stb_image.c
	includes/stb_image/stb_image.h
	
)

set(SOURCES main/main.cpp ${INCLUDES})

FIND_PACKAGE(OpenGL REQUIRED)
FIND_PACKAGE(GLUT REQUIRED)
FIND_PACKAGE(GLEW REQUIRED)
FIND_PACKAGE(SDL2 REQUIRED)

################ Requreided to Compile both on Mac and Ubuntu: 
IF(UNIX)
	IF(APPLE)
		FIND_PACKAGE(GLM REQUIRED)
	ELSE()
		# Specific for my ubuntu system:
		set(GLM_INCLUDE_DIR /usr/locale/include/glm/glm/glm.hpp)
	ENDIF()
ELSE()
	# Assumeing windows has a find package (not sure though)
	FIND_PACKAGE(GLM REQUIRED)
ENDIF()



INCLUDE_DIRECTORIES(${OPENGL_INCLUDE_DIR})
INCLUDE_DIRECTORIES(${GLEW_INCLUDE_DIR})
INCLUDE_DIRECTORIES(${SDL2_INCLUDE_DIR})
INCLUDE_DIRECTORIES(${GLM_INCLUDE_DIR})

add_executable(${project} ${SOURCES})

target_link_libraries(${project} ${SDL2_LIBRARIES} ${OPENGL_LIBRARIES} ${SDL2_LIBRARY} ${GLEW_LIBRARIES} ${GLM_LIBRARIES})
