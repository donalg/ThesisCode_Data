#include <iostream>
#include <string.h>
#include <GL/glew.h>
#include "../include/display/Display.hpp"


const float PI = 3.14159265f;
const float Radius = 4;
const float numPoints = 24;
float t, dt; /* angle */
int n = 30; /* # of segments */
int i;
float x = 2;
float y = 2;
float r = 2;
float t0 = 30;
float sweep = 40;


int main()
{
    Display display(800,800, "Hello World");

    while(!display.IsClosed())
    {
        glClearColor(0.0f, 0.15f, 0.3f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT);

        display.Update();
    }

    return 0;
}
