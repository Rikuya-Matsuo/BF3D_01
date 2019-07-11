#pragma once
#include "Actor.h"
class Cannon : public Actor
{
public:
	Cannon(int modelHandle, State state = State::Active, bool gravityFlag = false, float gravityRate = 0.0f, bool drawFlag = true);
	~Cannon();
};

