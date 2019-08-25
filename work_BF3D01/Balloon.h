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
	// ���L��
	Player * mOwner;

	// ���t���[���ɂ�������W
	VECTOR mNextPosition;

	// �R������ꏊ
	VECTOR mBottomPosition;

	// �v���C���[�ɑ΂��鑊�Έʒu
	const float mHeight;

};
