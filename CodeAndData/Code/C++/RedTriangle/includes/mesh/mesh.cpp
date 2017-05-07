#include "mesh.h"
#include <map>
#include <algorithm>
#include <stdlib.h>
#include <iostream>

mesh::mesh(vertex* vertices, unsigned int numVertices)
{
	// Needed for Mac OSX graphics card:
	//glewExperimental = GL_TRUE;
	//glewInit();

	myDrawCount = numVertices;
	glGenVertexArrays(1, &myVertexArrayObject);
	glBindVertexArray(myVertexArrayObject);

	glGenBuffers(NUM_BUFFERS, myVertexArrayBuffers);

	glBindBuffer(GL_ARRAY_BUFFER, myVertexArrayBuffers[POSITION_VB]);

	glBufferData(GL_ARRAY_BUFFER, numVertices * sizeof(vertices[0]), vertices, GL_STATIC_DRAW);


 	glEnableVertexAttribArray(0);

 	glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 0, 0);

	glBindVertexArray(0);
}

mesh::~mesh()
{
	glDeleteBuffers(NUM_BUFFERS, myVertexArrayBuffers);
	glDeleteVertexArrays(1, &myVertexArrayObject);
}

void mesh::draw()
{
	glBindVertexArray(myVertexArrayObject);
	glDrawArrays(GL_TRIANGLES, 0, myDrawCount);
	glBindVertexArray(0);
}
