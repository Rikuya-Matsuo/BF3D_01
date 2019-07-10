#include "Actor.h"
#include "GameSystem.h"

Actor::Actor(int modelHandle,State state, bool gravityFlag, float gravityRate, bool drawFlag):
	mModelHandle(modelHandle),
	mState(state),
	mGravityFlag(gravityFlag),
	mGravityRate(gravityRate),
	mDrawFlag(drawFlag),
	mSpeed(0.0f),
	mPosition(VGet(0.0f, 0.0f, 0.0f)),
	mVelocity(VGet(0.0f, 0.0f, 0.0f))
{
	mCollider = new BoxCollider(this, VAdd(mPosition, VGet(-1, 0, 0)), VAdd(mPosition, VGet(1, 13, 0)));

#ifdef _DEBUG_BF3D
	mCollider->SetDrawFlag(true);
	mCollider->SetDrawSurfaceFlag(false);
#endif _DEBUG_BF3D

	GameSystem::GetInstance().AddActor(this);
}

Actor::~Actor()
{
	if (mModelHandle > 0)
	{
		MV1DeleteModel(mModelHandle);
	}

	delete mCollider;

	GameSystem::GetInstance().RemoveActor(this);
}

void Actor::Update(float deltaTime)
{
	BaseOriginalUpdate();
}

void Actor::Draw()
{
	BaseOriginalDraw();
}

void Actor::OnCollisionHit(const BoxCollider & opponentCollision)
{
}

void Actor::BaseOriginalUpdate()
{
	MV1SetPosition(mModelHandle, mPosition);

	mCollider->SetPosition(VSub(mPosition, VGet(1, 0, 0)));
}

void Actor::BaseOriginalDraw()
{
	if (mDrawFlag && mModelHandle > 0)
	{
		MV1DrawModel(mModelHandle);

		mCollider->Draw();
	}
}
