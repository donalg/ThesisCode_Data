#ifndef DISPLAY_H
#define DISPLAY_H

#include <string.h>
#include <iostream>
#include <SDL2/SDL.h>

class Display
{
    public:
        Display(int width, int height, const std::string& title);

        void Update();
        bool IsClosed();

        virtual ~Display();

    protected:
    private:
        /*
        Display(const Display& other);
        Display& operator=(const Display& other);
        */
        SDL_Window* myWindow;
        SDL_GLContext myGlContext;

        bool myIsClosed;
};

#endif // DISPLAY_H
