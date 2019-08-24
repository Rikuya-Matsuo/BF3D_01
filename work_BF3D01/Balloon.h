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

	// �O�t���[���ɂ�������W
	VECTOR mPrevPosition;

	// �v���C���[�ɑ΂��鑊�Έʒu
	const float mHeight;

};
