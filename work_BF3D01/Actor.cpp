#include "Actor.h"
#include "GameSystem.h"

Actor::Actor(State state, bool gravityFlag, float gravityRate, bool drawFlag):
	mState(state),
	mGravityFlag(gravityFlag),
	mGravityRate(gravityRate),
	mDrawFlag(drawFlag),
	mSpeed(0.0f)
{
	GameSystem::GetInstance().AddActor(this);
}

Actor::~Actor()
{
	GameSystem::GetInstance().RemoveActor(this);
}

void Actor::Update(float deltaTime)
{
	WaitTimer(0);
}

void Actor::Draw()
{
	if (mDrawFlag && mModelHandle > 0)
	{
		MV1DrawModel(mModelHandle);
	}
}
