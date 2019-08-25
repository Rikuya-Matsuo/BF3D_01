#pragma once
#include "Actor.h"
#include "Player.h"

class Player;

class Balloon : public Actor
{
public:
	Balloon(int modelHandle, Player * owner);
	~Balloon();

	void Update(float deltaTime) override;
	void Draw() override;

	void OnCollisionHit(const BoxCollider& opponentCollision) override;

private:
	// 所有者
	Player * mOwner;

	// 次フレームにおける座標
	VECTOR mNextPosition;

	// 紐をつける場所
	VECTOR mBottomPosition;

	// プレイヤーに対する相対位置
	const float mHeight;

};
