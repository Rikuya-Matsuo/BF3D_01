#include "Balloon.h"

Balloon::Balloon(int modelHandle, Player * owner) :
	Actor(modelHandle, State::Active, false, 0.0f, true),
	mOwner(owner),
	mHeight(20.0f)
{
	float scale = 0.3f;
	MV1SetScale(mModelHandle, VGet(scale, scale, scale));

	float downX = -4.5f;
	float downY = -4.8f;
	float upX = 4.5f;
	float upY = 7.0f;

	VECTOR vertex = VAdd(mPosition, VGet(downX, downY, 0));
	VECTOR invVertex = VAdd(mPosition, VGet(upX, upY, 0));

	mCollider->SetVertexes(vertex, invVertex);
	mCollider->SetColliderTag(BoxCollider::BalloonCollider);
}

Balloon::~Balloon()
{
}

void Balloon::Update(float deltaTime)
{
	if (mState != State::Active)
	{
		return;
	}

	VECTOR prevPos = mPosition;

	// 1フレーム遅れてプレイヤーを追う
	mPosition = mNextPosition;

	// プレイヤーの座標を取得
	mNextPosition = mOwner->GetPosition();

	// 高さを調整
	mNextPosition.y += mHeight;

	BaseOriginalUpdate();

	mVelocity = VSub(mPosition, prevPos);
	mCollider->Move(mVelocity);

	// 紐をつける位置を更新
	mBottomPosition = mPosition;
	mBottomPosition.y = mCollider->GetSmallValueVertex().y;
}

void Balloon::Draw()
{
	BaseOriginalDraw();

	if (mState != State::Dead)
	{
		DrawLine3D(mBottomPosition, mOwner->GetHeadPosition(), GetColor(255, 255, 255));
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
