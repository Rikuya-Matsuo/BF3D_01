#pragma once
#include "Cube.h"
#include "Actor.h"

class Actor;

class BoxCollider : public Cube
{
public:
	enum EnumColliderTag
	{
		PlayerCollider,
		EnemyBulletCollider,
		ItemCollider,
		GroundCollider,
		Invalid_ColliderTag
	};

	BoxCollider(Actor * owner, char tag, VECTOR vertex, VECTOR inversionVertex);
	~BoxCollider();

	Actor * GetOwnerPointer() const { return mOwner; }

	char GetColliderTag() const { return mTag; }

	void SetColliderTag(char value) { mTag = value; }

private:
	Actor * mOwner;

	// �R���C�_�[����������A�N�^�[�̑����i�����ł̓^�O�ƌĂԁj
	char mTag;

	friend bool CheckCollision_Ver2D(const BoxCollider& obj1, const BoxCollider& obj2);
};

// Z�����̂��Ƃ��l���Ȃ������蔻��
bool CheckCollision_Ver2D(const BoxCollider& obj1, const BoxCollider& obj2);
