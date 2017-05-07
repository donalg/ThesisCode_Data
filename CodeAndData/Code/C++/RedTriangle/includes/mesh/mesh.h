#ifndef MESH_INCLUDED_H
#define MESH_INCLUDED_H

#include <GL/glew.h>
#include <glm/glm.hpp>
#include <string>
#include <vector>

struct vertex
{
public:
	vertex(const glm::vec3& pos)
	{
		this->pos = pos;
	}

private:
	glm::vec3 pos;
};

///////////////////////////////////////////////////////////

class mesh
{
public:
	mesh(vertex* Vertices, unsigned int numVertices);

	void draw();

	virtual ~mesh();
protected:
private:

	enum 
	{
	POSITION_VB,

	NUM_BUFFERS
	};

	GLuint myVertexArrayObject;
	GLuint myVertexArrayBuffers[NUM_BUFFERS];
	unsigned int myDrawCount;
};

#endif // MESH 