#include "Cube.h"

#define USE_DRAWCUBE 0

Cube::Cube(const VECTOR& vertex, const VECTOR& inversionVertex, bool collisionFlag, bool drawFlag, unsigned int color):
	mVertex(vertex),
	mInversionVertex(inversionVertex),
	mCollisionFlag(collisionFlag),
	mDrawFlag(drawFlag),
	mDrawSurfaceFlag(true),
	mColor(color),
	mUseTextureFlag(false)
{
	CalculateSize();
}


Cube::~Cube()
{
}

VECTOR Cube::GetSmallValueVertex() const
{
	VECTOR ret;

	ret.x = (mVertex.x < mInversionVertex.x) ? mVertex.x : mInversionVertex.x;
	ret.y = (mVertex.y < mInversionVertex.y) ? mVertex.y : mInversionVertex.y;
	ret.z = (mVertex.z < mInversionVertex.z) ? mVertex.z : mInversionVertex.z;

	return ret;
}

VECTOR Cube::GetLargeValueVertex() const
{
	VECTOR ret;

	ret.x = (!(mVertex.x < mInversionVertex.x)) ? mVertex.x : mInversionVertex.x;
	ret.y = (!(mVertex.y < mInversionVertex.y)) ? mVertex.y : mInversionVertex.y;
	ret.z = (!(mVertex.z < mInversionVertex.z)) ? mVertex.z : mInversionVertex.z;

	return ret;
}

void Cube::SetPosition(const VECTOR& vertex)
{
	mVertex = vertex;
	mInversionVertex = VAdd(mVertex, mSize);
}

void Cube::SetVertexes(const VECTOR& vertex, const VECTOR& inversion)
{
	mVertex = vertex;
	mInversionVertex = inversion;
	CalculateSize();
}

void Cube::LoadTexture(const char * fileName)
{
	if (mTexture > 0)
	{
		DeleteGraph(mTexture);
	}

	mTexture = LoadGraph(fileName);
	mUseTextureFlag = true;
}

void Cube::DeleteTexture()
{
	if (mTexture > 0)
	{
		DeleteGraph(mTexture);
	}
	mUseTextureFlag = false;
}

void Cube::Move(const VECTOR& velocity)
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
#if USE_DRAWCUBE
	DrawCube3D(mVertex, mInversionVertex, mColor, GetColor(255, 255, 255), TRUE);
#else
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

		// 上面
		{
			anotherVertex = VGet(mInversionVertex.x, mVertex.y, mInversionVertex.z);

			DrawRectangle3D(mVertex, anotherVertex, mColor);
		}

		// テクスチャ貼り付け
		if (mUseTextureFlag)
		{
			// 左下手前と右上奥の頂点の座標
			const VECTOR smallValueVertexPos = GetSmallValueVertex();
			const VECTOR largeValueVertexPos = GetLargeValueVertex();

			// 描画に使うポリゴンの頂点
			VERTEX3D vertex[6];

			// 各種設定
			for (int i = 0; i < 6; ++i)
			{
				// 色
				vertex[i].dif = GetColorU8(255, 255, 255, 255);
				vertex[i].spc = GetColorU8(255, 255, 255, 255);

				// テクスチャ座標
				float uVal, vVal;
				switch (i)
				{
				case 0:
					uVal = vVal = 0.0f;
					break;
				case 1:
					uVal = 1.0f;
					vVal = 0.0f;
					break;
				case 2:
					uVal = 0.0f;
					vVal = 1.0f;
					break;
				case 3:
					uVal = vVal = 1.0f;
					break;
				case 4:
					uVal = vertex[2].u;
					vVal = vertex[2].v;
					break;
				case 5:
					uVal = vertex[1].u;
					vVal = vertex[1].v;
					break;
				default:
					break;
				}
				vertex[i].u = uVal;
				vertex[i].v = vVal;
			}

			// ここから描画
			{
				MATERIALPARAM mtr;
				mtr.Diffuse = mtr.Ambient = mtr.Specular = GetColorF(0.0f, 0.0f, 0.0f, 0.0f);
				mtr.Emissive = GetColorF(1.0f, 1.0f, 1.0f, 1.0f);
				mtr.Power = 20.0f;
				SetMaterialParam(mtr);

				//////////////////
				// 上面
				//////////////////
				// 法線の設定
				for (int i = 0; i < 6; ++i)
				{
					vertex[i].norm = VGet(0.0f, 1.0f, 0.0f);
				}

				// 頂点の位置の設定
				vertex[0].pos = largeValueVertexPos;
				vertex[0].pos.x = smallValueVertexPos.x;

				vertex[1].pos = largeValueVertexPos;

				vertex[2].pos = smallValueVertexPos;
				vertex[2].pos.y = largeValueVertexPos.y;

				vertex[3].pos = largeValueVertexPos;
				vertex[3].pos.z = smallValueVertexPos.z;

				vertex[4].pos = vertex[2].pos;
				vertex[5].pos = vertex[1].pos;

				// 描画
				DrawPolygon3D(vertex, 2, mTexture, FALSE);

				////////////////
				// 側面
				////////////////
				// 左側
				// 法線の設定
				for (int i = 0; i < 6; ++i)
				{
					vertex[i].norm = VGet(-1.0f, 0.0f, 0.0f);
				}

				// 頂点の位置の設定
				vertex[0].pos = largeValueVertexPos;
				vertex[0].pos.x = smallValueVertexPos.x;
				
				vertex[1].pos = smallValueVertexPos;
				vertex[1].pos.y = largeValueVertexPos.y;

				vertex[2].pos = smallValueVertexPos;

				vertex[3].pos = smallValueVertexPos;
				vertex[3].pos.z = largeValueVertexPos.z;

				vertex[4].pos = vertex[2].pos;
				vertex[5].pos = vertex[1].pos;

				// 描画
				DrawPolygon3D(vertex, 2, mTexture, FALSE);

				// 右側
				// 法線の設定
				for (int i = 0; i < 6; ++i)
				{
					vertex[i].norm = VGet(1.0f, 0, 0);
				}

				// 頂点の位置の設定
				vertex[0].pos = largeValueVertexPos;
				vertex[0].pos.z = smallValueVertexPos.z;

				vertex[1].pos = largeValueVertexPos;

				vertex[2].pos = smallValueVertexPos;
				vertex[2].pos.x = largeValueVertexPos.x;

				vertex[3].pos = largeValueVertexPos;
				vertex[3].pos.y = smallValueVertexPos.y;

				vertex[4].pos = vertex[2].pos;
				vertex[5].pos = vertex[1].pos;

				// 描画
				DrawPolygon3D(vertex, 2, mTexture, FALSE);

				///////////////////
				// 底面
				///////////////////
				// 法線の設定
				for (int i = 0; i < 6; ++i)
				{
					vertex[i].norm = VGet(0.0f, -1.0f, 0.0f);
				}

				// 頂点の位置の設定
				vertex[0].pos = smallValueVertexPos;

				vertex[1].pos = smallValueVertexPos;
				vertex[1].pos.x = largeValueVertexPos.x;

				vertex[2].pos = smallValueVertexPos;
				vertex[2].pos.z = largeValueVertexPos.z;

				vertex[3].pos = largeValueVertexPos;
				vertex[3].pos.y = smallValueVertexPos.y;

				vertex[4].pos = vertex[2].pos;
				vertex[5].pos = vertex[1].pos;

				// 描画
				DrawPolygon3D(vertex, 2, mTexture, FALSE);

				////////////////////
				// 手前の面
				////////////////////
				// 法線の設定
				for (int i = 0; i < 6; ++i)
				{
					vertex[i].norm = VGet(0.0f, 0.0f, -1.0f);
				}

				// 頂点の位置の設定
				vertex[0].pos = smallValueVertexPos;
				vertex[0].pos.y = largeValueVertexPos.y;

				vertex[1].pos = largeValueVertexPos;
				vertex[1].pos.z = smallValueVertexPos.z;

				vertex[2].pos = smallValueVertexPos;

				vertex[3].pos = smallValueVertexPos;
				vertex[3].pos.x = largeValueVertexPos.x;

				vertex[4].pos = vertex[2].pos;
				vertex[5].pos = vertex[1].pos;

				// 描画
				DrawPolygon3D(vertex, 2, mTexture, FALSE);
			}
		}
	}
#endif
}

void Cube::CalculateSize()
{
	mSize = VSub(mInversionVertex, mVertex);
	mSize.x = ABSOLUTE_VALUE(mSize.x);
	mSize.y = ABSOLUTE_VALUE(mSize.y);
	mSize.z = ABSOLUTE_VALUE(mSize.z);
}
