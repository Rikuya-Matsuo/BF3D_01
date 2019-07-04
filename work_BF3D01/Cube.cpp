#include "Cube.h"



Cube::Cube()
{
}


Cube::~Cube()
{
}

void Cube::SetVertexes(VECTOR vertex, VECTOR inversion)
{
	mVertex = vertex;
	mInversionVertex = inversion;
}

void Cube::Move(VECTOR velocity)
{
	mVertex = VAdd(mVertex, velocity);
	mInversionVertex = VAdd(mInversionVertex, velocity);
}

void Cube::Draw() const
{
	VECTOR copyVertex = mVertex;
	VECTOR copyInversion = mInversionVertex;

	// X���������`��
	{
		// ��{��
		copyInversion.y = mVertex.y;
		copyInversion.z = mVertex.z;
		DrawLine3D(copyVertex, copyInversion, mColor);
		copyInversion = mInversionVertex;

		// ��{��
		copyVertex.y = mInversionVertex.y;
		copyInversion.z = mVertex.z;
		DrawLine3D(copyVertex, copyInversion, mColor);
		copyVertex = mVertex;
		copyInversion = mInversionVertex;

		// �O�{��
		copyVertex.y = mInversionVertex.y;
		copyVertex.z = mInversionVertex.z;
		DrawLine3D(copyVertex, copyInversion, mColor);
		copyVertex = mVertex;

		// �l�{��
		copyInversion.y = mVertex.y;
		copyVertex.z = mInversionVertex.z;
		DrawLine3D(copyVertex, copyInversion, mColor);
		copyVertex = mVertex;
		copyInversion = mInversionVertex;
	}

	// Y���������`��
	{
		// ��{��
		copyInversion.x = mVertex.x;
		copyInversion.z = mVertex.z;
		DrawLine3D(copyVertex, copyInversion, mColor);
		copyInversion = mInversionVertex;

		// ��{��
		copyVertex.x = mInversionVertex.x;
		copyInversion.z = mVertex.z;
		DrawLine3D(copyVertex, copyInversion, mColor);
		copyVertex = mVertex;
		copyInversion = mInversionVertex;

		// �O�{��
		copyVertex.x = mInversionVertex.x;
		copyVertex.z = mInversionVertex.z;
		DrawLine3D(copyVertex, copyInversion, mColor);
		copyVertex = mVertex;

		// �l�{��
		copyInversion.x = mVertex.x;
		copyVertex.z = mInversionVertex.z;
		DrawLine3D(copyVertex, copyInversion, mColor);
		copyVertex = mVertex;
		copyInversion = mInversionVertex;
	}

	// Z���������`��
	{
		// ��{��
		copyInversion.x = mVertex.x;
		copyInversion.y = mVertex.y;
		DrawLine3D(copyVertex, copyInversion, mColor);
		copyInversion = mInversionVertex;

		// ��{��
		copyVertex.x = mInversionVertex.x;
		copyInversion.y = mVertex.y;
		DrawLine3D(copyVertex, copyInversion, mColor);
		copyVertex = mVertex;
		copyInversion = mInversionVertex;

		// �O�{��
		copyVertex.x = mInversionVertex.x;
		copyVertex.y = mInversionVertex.y;
		DrawLine3D(copyVertex, copyInversion, mColor);
		copyVertex = mVertex;

		// �l�{��
		copyInversion.x = mVertex.x;
		copyVertex.y = mInversionVertex.y;
		DrawLine3D(copyVertex, copyInversion, mColor);
		copyVertex = mVertex;
		copyInversion = mInversionVertex;
	}
}
