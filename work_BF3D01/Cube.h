#pragma once
#include "DxLib.h"
#include "Common.h"

class Cube
{
public:
	Cube(const VECTOR& vertex, const VECTOR& inversionVertex, bool collisionFlag, bool drawFlag = true, unsigned int color = 0xffffffff);
	virtual ~Cube();

	// 二つの頂点の中でも値の小さい要素を集めた頂点を返す
	VECTOR GetSmallValueVertex() const;

	// 二つの頂点の中でも値の大きい要素を集めた頂点を返す
	VECTOR GetLargeValueVertex() const;

	bool GetCollisionFlag() const { return mCollisionFlag; }

	const VECTOR& GetSize() const { return mSize; }

	void SetPosition(const VECTOR& vertex);
	void SetVertexes(const VECTOR& vertex, const VECTOR& inversion);
	void SetColor(unsigned int value) { mColor = value; }
	void SetDrawFlag(bool value) { mDrawFlag = value; }
	void SetDrawSurfaceFlag(bool value) { mDrawSurfaceFlag = value; }
	void SetCollisionFlag(bool value) { mCollisionFlag = value; }
	void LoadTexture(const char * fileName);
	void DeleteTexture();

	void Move(const VECTOR& velocity);

	void Draw() const;

protected:
	// キューブの頂点とその反対側の頂点の各座標
	VECTOR mVertex;
	VECTOR mInversionVertex;

	// 上の二つから算出される、立体の各方向の大きさ
	VECTOR mSize;

	// キューブの色
	unsigned int mColor;

	// 描画するかのフラグ
	bool mDrawFlag;

	// 面を描画するかのフラグ
	bool mDrawSurfaceFlag;

	// コリジョンを設けるかのフラグ
	bool mCollisionFlag;

	// テクスチャハンドル
	int mTexture;

	// テクスチャを使うフラグ
	bool mUseTextureFlag;

private:
	void CalculateSize();
};

