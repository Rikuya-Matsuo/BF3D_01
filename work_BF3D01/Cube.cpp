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
	// 線で描画
	{
		VECTOR copyVertex = mVertex;
		VECTOR copyInversion = mInversionVertex;

		// X方向線分描画
		{
			// 一本目
			copyInversion.y = mVertex.y;
			copyInversion.z = mVertex.z;
			DrawLine3D(copyVertex, copyInversion, mColor);
			copyInversion = mInversionVertex;

			// 二本目
			copyVertex.y = mInversionVertex.y;
			copyInversion.z = mVertex.z;
			DrawLine3D(copyVertex, copyInversion, mColor);
			copyVertex = mVertex;
			copyInversion = mInversionVertex;

			// 三本目
			copyVertex.y = mInversionVertex.y;
			copyVertex.z = mInversionVertex.z;
			DrawLine3D(copyVertex, copyInversion, mColor);
			copyVertex = mVertex;

			// 四本目
			copyInversion.y = mVertex.y;
			copyVertex.z = mInversionVertex.z;
			DrawLine3D(copyVertex, copyInversion, mColor);
			copyVertex = mVertex;
			copyInversion = mInversionVertex;
		}

		// Y方向線分描画
		{
			// 一本目
			copyInversion.x = mVertex.x;
			copyInversion.z = mVertex.z;
			DrawLine3D(copyVertex, copyInversion, mColor);
			copyInversion = mInversionVertex;

			// 二本目
			copyVertex.x = mInversionVertex.x;
			copyInversion.z = mVertex.z;
			DrawLine3D(copyVertex, copyInversion, mColor);
			copyVertex = mVertex;
			copyInversion = mInversionVertex;

			// 三本目
			copyVertex.x = mInversionVertex.x;
			copyVertex.z = mInversionVertex.z;
			DrawLine3D(copyVertex, copyInversion, mColor);
			copyVertex = mVertex;

			// 四本目
			copyInversion.x = mVertex.x;
			copyVertex.z = mInversionVertex.z;
			DrawLine3D(copyVertex, copyInversion, mColor);
			copyVertex = mVertex;
			copyInversion = mInversionVertex;
		}

		// Z方向線分描画
		{
			// 一本目
			copyInversion.x = mVertex.x;
			copyInversion.y = mVertex.y;
			DrawLine3D(copyVertex, copyInversion, mColor);
			copyInversion = mInversionVertex;

			// 二本目
			copyVertex.x = mInversionVertex.x;
			copyInversion.y = mVertex.y;
			DrawLine3D(copyVertex, copyInversion, mColor);
			copyVertex = mVertex;
			copyInversion = mInversionVertex;

			// 三本目
			copyVertex.x = mInversionVertex.x;
			copyVertex.y = mInversionVertex.y;
			DrawLine3D(copyVertex, copyInversion, mColor);
			copyVertex = mVertex;

			// 四本目
			copyInversion.x = mVertex.x;
			copyVertex.y = mInversionVertex.y;
			DrawLine3D(copyVertex, copyInversion, mColor);
			copyVertex = mVertex;
			copyInversion = mInversionVertex;
		}
	}

	// 面を描画
	// 三角形を二つ組み合わせて描画する
	{
		// 描画する三角形の頂点
		VECTOR vertex[3];

		// 上面
		{
			vertex[0] = VGet(mVertex.x, mVertex.y, mInversionVertex.z);
			vertex[1] = mVertex;
			vertex[2] = VGet(mInversionVertex.x, mVertex.y, mInversionVertex.z);
			DrawTriangle3D(vertex[0], vertex[1], vertex[2], mColor, TRUE);

			vertex[0] = VGet(mInversionVertex.x, mVertex.y, mVertex.z);
			DrawTriangle3D(vertex[0], vertex[1], vertex[2], mColor, TRUE);
		}
	}
}
