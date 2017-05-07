#include "shader.h"
#include <iostream>
#include <fstream>

shader::shader(const std::string& fileName)
{
	myProgram = glCreateProgram();
	myShaders[0] = createShader(loadShader(fileName + ".vs"), GL_VERTEX_SHADER);
	myShaders[1] = createShader(loadShader(fileName + ".fs"), GL_FRAGMENT_SHADER);

	for(unsigned int i = 0; i < NUM_SHADERS; i++) 
    {
		glAttachShader(myProgram, myShaders[i]);
    }

	glLinkProgram(myProgram);
	checkShaderError(myProgram, GL_LINK_STATUS, true, "Error linking shader program");

	glValidateProgram(myProgram);
	checkShaderError(myProgram, GL_LINK_STATUS, true, "Invalid shader program");
}

shader::~shader()
{
	for(unsigned int i = 0; i < NUM_SHADERS; i++)
    {
        glDetachShader(myProgram, myShaders[i]);
        glDeleteShader(myShaders[i]);
    }

	glDeleteProgram(myProgram);
}

void shader::bind()
{
	glUseProgram(myProgram);
}

std::string shader::loadShader(const std::string& fileName)
{
    std::ifstream file;
    file.open((fileName).c_str());

    std::string output;
    std::string line;

    if(file.is_open())
    {
        while(file.good())
        {
            getline(file, line);
			output.append(line + "\n");
        }
    }
    else
    {
		std::cerr << "Unable to load shader: " << fileName << std::endl;
    }

    return output;
}

void shader::checkShaderError(GLuint shader, GLuint flag, bool isProgram, const std::string& errorMessage)
{
    GLint success = 0;
    GLchar error[1024] = { 0 };

    if(isProgram)
        glGetProgramiv(shader, flag, &success);
    else
        glGetShaderiv(shader, flag, &success);

    if(success == GL_FALSE)
    {
        if(isProgram)
            glGetProgramInfoLog(shader, sizeof(error), NULL, error);
        else
            glGetShaderInfoLog(shader, sizeof(error), NULL, error);

        std::cerr << errorMessage << ": '" << error << "'" << std::endl;
    }
}

GLuint shader::createShader(const std::string& text, unsigned int type)
{
    GLuint shader = glCreateShader(type);

    if(shader == 0)
    {
		std::cerr << "Error compiling shader type " << type << std::endl;
    }
    
    const GLchar* shaderSourceStrings[1];
    shaderSourceStrings[0] = text.c_str();
    GLint shaderSourceStringsLengths[1];
    shaderSourceStringsLengths[0] = text.length();

    glShaderSource(shader, 1, shaderSourceStrings, shaderSourceStringsLengths);
    glCompileShader(shader);

    checkShaderError(shader, GL_COMPILE_STATUS, false, "Error compiling shader!");

    return shader;
}
