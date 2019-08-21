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

		if (actor.GetVelocity().y > actor.GetFallSpeedLimit())
		{
			actor.SetVelocityY(actor.GetFallSpeedLimit());
		}
	}
#ifdef _DEBUG_BF3D

	else
	{
		printfDx("重力フラグが負であるため、落下を実行できません\n");
	}

#endif // _DEBUG_BF3D
}
