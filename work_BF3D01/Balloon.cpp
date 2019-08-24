#include "Balloon.h"

Balloon::Balloon(int modelHandle, Player * owner) :
	Actor(modelHandle, State::Active, false, 0.0f, true),
	mOwner(owner),
	mHeight(20.0f)
{
	float scale = 0.3f;
	MV1SetScale(mModelHandle, VGet(scale, scale, scale));

	float width = 1.0f;
	float height = 1.5f;
	VECTOR vertex = VAdd(mPosition, VGet(-width, 0, 0));
	VECTOR invVertex = VAdd(mPosition, VGet(width, height, 0));

	mCollider->SetVertexes(vertex, invVertex);
}

Balloon::~Balloon()
{
}

void Balloon::Update(float deltaTime)
{
	// 位置フレーム遅れてプレイヤーを追う
	mPosition = mPrevPosition;

	// プレイヤーの座標を取得
	mPrevPosition = mOwner->GetPosition();
	mPrevPosition.y += mHeight;

	BaseOriginalUpdate();
}

void Balloon::Draw()
{
	BaseOriginalDraw();

	if (mState != State::Dead)
	{
		DrawLine3D(mPosition, mOwner->GetHeadPosition(), GetColor(255, 255, 255));
	}
}

void Balloon::OnCollisionHit(const BoxCollider & opponentCollision)
{
	char opponentTag = opponentCollision.GetColliderTag();

	if (opponentTag == BoxCollider::EnemyBulletCollider)
	{
		SetState(State::Dead);
		mOwner->SetState(State::Dead);
	}
}
