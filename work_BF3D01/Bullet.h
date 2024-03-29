﻿#pragma once
#include "Actor.h"

class Bullet : public Actor
{
public:
	Bullet(int modelHandle, State state = State::Dead, bool gravityFlag = false, float gravityRate = 0.0f, bool drawFlag = true);
	~Bullet();

	void SetColor(unsigned int color) { mColor = color; }

	void Update(float deltaTime) override;
	void Draw() override;

	void OnCollisionHit(const BoxCollider& opponentCollision) override;

private:
	// 半径の大きさ
	const float		mRadius;

	// 座標の値と頂点の値の距離
	const VECTOR	mBetweenPosAndVertexes;

	// 色
	unsigned int	mColor;
};

