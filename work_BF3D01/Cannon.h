#pragma once
#include "DxLib.h"
#include "Actor.h"
#include "Bullet.h"

class Cannon : public Actor
{
public:
	Cannon(int modelHandle, State state = State::Active, bool gravityFlag = false, float gravityRate = 0.0f, bool drawFlag = true);
	~Cannon();

	void Shoot(VECTOR direction, Bullet* shot);
};

