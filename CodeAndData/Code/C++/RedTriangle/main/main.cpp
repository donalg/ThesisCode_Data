#include <iostream>
#include <string.h>
#include <GL/glew.h>
#include "../includes/display/display.h"
#include "../includes/shader/shader.h"
#include "../includes/mesh/mesh.h"


int main(int argc, char* argv[])
{

		std::string current_exec_name = argv[0]; // Name of the current exec program
  	std::string shaderLocation;
  	std::vector<std::string> all_args;

  	shaderLocation = "../resources/shaders/basicShader";

  	if (argc > 1)
  	{
    	shaderLocation = argv[1];
    	all_args.assign(argv + 1, argv + argc);
  	}

    display Display(800,800, "Hello World");

    vertex Verticies[] = { vertex( glm::vec3(-0.5,-0.5,0) ),
						    					 vertex( glm::vec3(0,0.5,0) ),
    					   	 			   vertex( glm::vec3(0.5,-0.5,0) )
    					 					};

		std::cout << "Verticies: " << std::endl;
		for (int i = 0; i < (sizeof(Verticies)/sizeof(Verticies[0])); i++ )
		{
			std::cout << "Verticy: " << i << std::endl;
			for (int j = 0; j < (sizeof(Verticies[0])/sizeof(Verticies[0,0])); j++ )
			{
					std::cout << (float)Verticies[i][j] << std::endl;
			}

		}

    mesh Mesh(Verticies, (sizeof(Verticies)/sizeof(Verticies[0])) );
    //"../resources/shaders/basicShader"

    std::cout << shaderLocation << std::endl;

    shader Shader(shaderLocation);


    while(Display.running())
    {
     	Display.clear(0.0f, 0.15f, 0.3f, 1.0f);
     	Shader.bind();

     	Mesh.draw();

        Display.swapBuffers();
    }

    return 0;
}
