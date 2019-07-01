#include "PhysicalRule.h"

PhysicalRule::PhysicalRule():
	mGravity(9.8f)
{
}

PhysicalRule::~PhysicalRule()
{
}

void PhysicalRule::Fall(Actor & actor) const
{
	actor.AddVelocity(VGet(0, mGravity * actor.GetGravityRate(), 0));
}
