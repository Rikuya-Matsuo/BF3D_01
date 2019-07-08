#include "PhysicalRule.h"

PhysicalRule::PhysicalRule():
	mGravity(-9.8f)
{
}

PhysicalRule::~PhysicalRule()
{
}

void PhysicalRule::Fall(Actor & actor) const
{
	if (actor.GetGravityFlag())
	{
		actor.AddVelocity(VGet(0, mGravity * GameSystem::GetInstance().GetDeltaTime() * actor.GetGravityRate(), 0));
	}
	else
	{
		printfDx("重力フラグが負であるため、落下を実行できません");
	}
}
