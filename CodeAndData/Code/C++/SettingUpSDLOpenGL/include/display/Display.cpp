#include "Display.hpp"
#include <GL/glew.h>
#include <SDL2/SDL.h>
#include <iostream>

Display::Display(int width, int height, const std::string& title)
{
    //ctor
    SDL_Init(SDL_INIT_EVERYTHING);
    SDL_GL_SetAttribute(SDL_GL_RED_SIZE, 8);
    SDL_GL_SetAttribute(SDL_GL_GREEN_SIZE, 8);
    SDL_GL_SetAttribute(SDL_GL_BLUE_SIZE, 8);
    SDL_GL_SetAttribute(SDL_GL_ALPHA_SIZE, 8);
    SDL_GL_SetAttribute(SDL_GL_BUFFER_SIZE, 32);
    SDL_GL_SetAttribute(SDL_GL_DOUBLEBUFFER, 1);
    myWindow = SDL_CreateWindow(title.c_str(), SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, width, height, SDL_WINDOW_OPENGL);
    myGlContext = SDL_GL_CreateContext(myWindow);

    GLenum status = glewInit();

    if(status != GLEW_OK)
    {
        std::cerr << "Glew failed to initalise..." << std::endl;
    }

    myIsClosed = false;
}

Display::~Display()
{
    //dtor
    SDL_GL_DeleteContext(myGlContext);
    SDL_DestroyWindow(myWindow);
    SDL_Quit();
}

/*
Display::Display(const Display& other)
{
    //copy ctor

}


Display& Display::operator=(const Display& rhs)
{
    if (this == &rhs) return *this; // handle self assignment
    //assignment operator
    return *this;
}
*/

bool Display::IsClosed()
{
    return myIsClosed;
}

void Display::Update()
{
    SDL_GL_SwapWindow(myWindow);
    SDL_Event e;
    while(SDL_PollEvent(&e))
    {
        if(e.type == SDL_QUIT)
        {
            myIsClosed = true;
        }
    }
}
