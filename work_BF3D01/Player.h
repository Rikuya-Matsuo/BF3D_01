#pragma once
#include "Actor.h"

class Player : public Actor
{
public:
	Player(int modelHandle, State state = State::Active, bool gravityFlag = true, float gravityRate = 0.5f, bool drawFlag = true);
	~Player();

	void Update(float deltaTime) override;

private:
	// 制動率
	const float brakeRate;

	// 羽ばたくことで発生するプレイヤーが上昇する力
	// 常に負の値をとるので、実際に上昇させるときは速度の値に加算するということに注意
	const float mFlapForce;

	// バルーンのモデルハンドル
	int mBalloonModel;

	// バルーンのプレイヤーに対する相対位置
	VECTOR mBalloonPositionOffset;

	void Move();
};

