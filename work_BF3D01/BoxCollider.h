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

	// コライダーが所属するアクターの属性（ここではタグと呼ぶ）
	char mTag;

	friend bool CheckCollision_Ver2D(const BoxCollider& obj1, const BoxCollider& obj2);
};

// Z方向のことを考えない当たり判定
bool CheckCollision_Ver2D(const BoxCollider& obj1, const BoxCollider& obj2);
