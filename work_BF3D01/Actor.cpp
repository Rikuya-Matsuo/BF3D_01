#include "Actor.h"
#include "GameSystem.h"

Actor::Actor(int modelHandle,State state, bool gravityFlag, float gravityRate, bool drawFlag):
	mModelHandle(modelHandle),
	mState(state),
	mGravityFlag(gravityFlag),
	mGravityRate(gravityRate),
	mDrawFlag(drawFlag),
	mSpeed(0.0f),
	mPosition(VGet(0.0f, -50.0f, 0.0f)),
	mVelocity(VGet(0.0f, 0.0f, 0.0f))
{
	GameSystem::GetInstance().AddActor(this);
}

Actor::~Actor()
{
	if (mModelHandle > 0)
	{
		MV1DeleteModel(mModelHandle);
	}

	GameSystem::GetInstance().RemoveActor(this);
}

void Actor::Update(float deltaTime)
{
	MV1SetPosition(mModelHandle, mPosition);
}

void Actor::Draw()
{
	if (mDrawFlag && mModelHandle > 0)
	{
		MV1DrawModel(mModelHandle);
	}
}

void Actor::OnCollisionHit(const Cube & opponentCollision)
{
}
