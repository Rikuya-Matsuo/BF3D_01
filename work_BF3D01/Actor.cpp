#include "Actor.h"

Actor::Actor(State state, bool gravityFlag, float gravityRate):
	mState(state),
	mGravityFlag(gravityFlag),
	mGravityRate(gravityRate)
{
}

void Actor::Update(float deltaTime)
{
}

void Actor::Draw()
{
}
