#include <iostream>
#include <string.h>
#include <GL/glew.h>
#include "../include/display/display.h"
#include "../include/shader/shader.h"

int main()
{
    display Display(800,800, "Hello World");

    shader Shader("../resources/sharders/basicShader");


    while(display.running())
    {
     	Display.clear(0.0f, 0.15f, 0.3f, 1.0f);
        Shader.bind();
        Display.swapBuffers();
    }

    return 0;
}
