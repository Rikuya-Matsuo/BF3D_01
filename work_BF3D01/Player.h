#pragma once
#include "Actor.h"

class Player : public Actor
{
public:
	Player(State state = State::Active, bool gravityFlag = false, float gravityRate = 0.5f, bool drawFlag = true);
	~Player();

	void Update(float deltaTime) override;

private:
	// 羽ばたくことで発生するプレイヤーが上昇する力
	// 常に負の値をとるので、実際に上昇させるときは速度の値に加算するということに注意
	const float mFlapForce;

	void Move();
};

