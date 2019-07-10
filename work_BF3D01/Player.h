#pragma once
#include "Actor.h"

class Player : public Actor
{
public:
	Player(int modelHandle, State state = State::Active, bool gravityFlag = true, float gravityRate = 0.5f, bool drawFlag = true);
	~Player();

	void Update(float deltaTime) override;
	void OnCollisionHit(const BoxCollider& opponentCollision) override;

private:
	// 制動率
	const float mBrakeRate;

	// 羽ばたくことで発生するプレイヤーが上昇する力
	const float mFlapForce;

	// スピードの制限値
	const float mSpeedLimit;

	// バルーンのモデルハンドル
	int mBalloonModel;

	// バルーンのプレイヤーに対する相対位置
	VECTOR mBalloonPositionOffset;

	// 着地フラグ

	// 速度ベクトルを位置ベクトルに加算する関数
	void Move();
};

/*
今日の教訓
＊川上から大きな桃が流れてきても、衛生上拾うのは避けたほうがいい
*/
