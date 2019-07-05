#include "Cube.h"



Cube::Cube(VECTOR vertex, VECTOR inversionVertex, bool collisionFlag, bool drawFlag, unsigned int color):
	mVertex(vertex),
	mInversionVertex(inversionVertex),
	mCollisionFlag(collisionFlag),
	mDrawFlag(drawFlag),
	mDrawSurfaceFlag(true),
	mColor(color)
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
	// 描画フラグがfalseなら、関数を抜ける
	if (!mDrawFlag)
	{
		return;
	}

	// 線で描画
	if (!mDrawSurfaceFlag)
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
	else
	{
		// 描画する面を指定するために必要なもう一つの頂点座標
		// これとmVertex, mInversionVertexを使って描画する面の対角を示す
		VECTOR anotherVertex;

		// 上面
		{
			anotherVertex = VGet(mInversionVertex.x, mVertex.y, mInversionVertex.z);

			DrawRectangle3D(mVertex, anotherVertex, mColor);
		}

		// 側面 * 4
		// ちなみに描画順はanotherVertexの移動する辺が少なくなるよう決めている。
		// それにより1, 2, 4つ目の座標設定ではVGetを使わず、VECTORメンバ変数だけ書き換えることで処理の軽量化が見込める。
		// （微々たるものかもしれないが・・・）
		{
			// 一つ目
			anotherVertex = VGet(mInversionVertex.x, mVertex.y, mVertex.z);
			
			DrawRectangle3D(mInversionVertex, anotherVertex, mColor);

			// 二つ目
			anotherVertex = VGet(mInversionVertex.x, mInversionVertex.y, mVertex.z);

			DrawRectangle3D(mVertex, anotherVertex, mColor);

			// 三つ目
			anotherVertex = VGet(mVertex.x, mVertex.y, mInversionVertex.z);

			DrawRectangle3D(mInversionVertex, anotherVertex, mColor);

			// 四つ目
			anotherVertex = VGet(mVertex.x, mInversionVertex.y, mInversionVertex.z);

			DrawRectangle3D(mVertex, anotherVertex, mColor);
		}

		// 底面
		// ここも上と同じく、Z座標を書き換えるだけで頂点座標の設定が可能。
		// ひとまず可読性を重視し、VGetを用いる
		{
			anotherVertex = VGet(mVertex.x, mInversionVertex.y, mVertex.z);

			DrawRectangle3D(mInversionVertex, anotherVertex, mColor);
		}
	}
}
