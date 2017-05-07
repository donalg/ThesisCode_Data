#ifndef SHADER_INCLUDED_H
#define SHADER_INCLUDED_H

#include <string>
#include <GL/glew.h>

class shader
{
public:
	shader(const std::string& fileName);

	void bind();

	virtual ~shader();
protected:
private:
	static const unsigned int NUM_SHADERS = 2;

	std::string loadShader(const std::string& fileName);
	void checkShaderError(GLuint shader, GLuint flag, bool isProgram, const std::string& errorMessage);
	GLuint createShader(const std::string& text, unsigned int type);

	GLuint myProgram;
	GLuint myShaders[NUM_SHADERS];
};

#endif