#pragma once
#include "DxLib.h"
#include "Actor.h"

class Diamond : public Actor
{
public:
	Diamond(int modelHandle, State state = State::Active, bool gravityFlag = false, float gravityRate = 0.0f, bool drawFlag = true);
	~Diamond();

	void Update(float deltaTime) override;

	void OnCollisionHit(const BoxCollider& opponentCollider) override;
};

