#pragma once
#include "DxLib.h"
#include "Common.h"
#include "Actor.h"

class Cube
{
public:
	Cube(VECTOR vertex, VECTOR inversionVertex, bool collisionFlag, bool drawFlag = true, unsigned int color = 0xffffffff);
	virtual ~Cube();

	bool GetCollisionFlag() const { return mCollisionFlag; }

	void SetVertexes(VECTOR vertex, VECTOR inversion);
	void SetColor(unsigned int value) { mColor = value; }
	void SetDrawFlag(bool value) { mDrawFlag = value; }
	void SetDrawSurfaceFlag(bool value) { mDrawSurfaceFlag = value; }
	void SetCollisionFlag(bool value) { mCollisionFlag = value; }
	//void SetOwner(const Actor * owner) { mOwner = (Actor *)owner; }

	void Move(VECTOR velocity);

	void Draw() const;

protected:
	// キューブの頂点とその反対側の頂点の各座標
	VECTOR mVertex;
	VECTOR mInversionVertex;

	// キューブの色
	unsigned int mColor;

	// 描画するかのフラグ
	bool mDrawFlag;

	// 面を描画するかのフラグ
	bool mDrawSurfaceFlag;

	// コリジョンを設けるかのフラグ
	bool mCollisionFlag;

	// コリジョンとして使われるときの持ち主
	// Actor * mOwner;
};

