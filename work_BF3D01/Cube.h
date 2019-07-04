#pragma once
#include "DxLib.h"

class Cube
{
public:
	Cube();
	virtual ~Cube();

	bool GetCollisionFlag() const { return mCollisionFlag; }

	void SetVertexes(VECTOR vertex, VECTOR inversion);
	void SetColor(unsigned int value) { mColor = value; }
	void SetCollisionFlag(bool value) { mCollisionFlag = value; }

	void Move(VECTOR velocity);

	void Draw() const;

protected:
	// キューブの頂点とその反対側の頂点の各座標
	VECTOR mVertex;
	VECTOR mInversionVertex;

	// キューブの色
	unsigned int mColor;

	// コリジョンを設けるかのフラグ
	bool mCollisionFlag;
};

