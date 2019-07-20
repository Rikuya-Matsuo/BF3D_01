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

	// 角の位置の列挙（次のように入力)
	// X:右->RightCorner	左->LeftCorner
	enum EnumCornerX
	{
		RightCorner,
		LeftCorner,
		Invalid_CornerX
	};

	// Y:上->UpCorner		下->DownCorner
	enum EnumCornerY
	{
		UpCorner,
		DownCorner,
		Invalid_CornerY
	};

	// Z:手前->NearCorner	奥->FarCorner
	enum EnumCornerZ
	{
		NearCorner,
		FarCorner,
		Invalid_CornerZ
	};

	BoxCollider(Actor * owner, char tag, VECTOR vertex, VECTOR inversionVertex);
	~BoxCollider();

	Actor * GetOwnerPointer() const { return mOwner; }

	void Update();

	char GetColliderTag() const { return mTag; }

	void SetColliderTag(char value) { mTag = value; }

	const VECTOR& GetCornerPosition(EnumCornerX cornerX, EnumCornerY cornerY, EnumCornerZ cornerZ) { return mCornerPosition[cornerX][cornerY][cornerZ]; }

	float GetCornerPositionX(EnumCornerX cornerX);
	float GetCornerPositionY(EnumCornerY cornerY);
	float GetCornerPositionZ(EnumCornerZ cornerZ);

	void GetCornerPositionArrayNear(VECTOR * destination, size_t size) {}

private:
	Actor * mOwner;

	// コライダーが所属するアクターの属性（ここではタグと呼ぶ）
	char mTag;

	// 8つの頂点の座標
	VECTOR mCornerPosition[Invalid_CornerX][Invalid_CornerY][Invalid_CornerZ];
	/*
	float mCornerPositionXArray[Invalid_CornerX];
	float mCornerPositionYArray[Invalid_CornerY];
	float mCornerPositionZArray[Invalid_CornerZ];
	*/
	friend bool CheckCollision_2DVersion(const BoxCollider& obj1, const BoxCollider& obj2);
	friend bool CheckCollisionAndPoint_2DVersion(const VECTOR& point, const BoxCollider& collider);
};

// Z方向のことを考えない当たり判定
bool CheckCollision_2DVersion(const BoxCollider& obj1, const BoxCollider& obj2);

// コリジョン内に指定された点があるか
// ただし、Z方向のことは考えない
bool CheckCollisionAndPoint_2DVersion(const VECTOR& point, const BoxCollider& collider);
