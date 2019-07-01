#include "PhysicalRule.h"

PhysicalRule::~PhysicalRule()
{
}

void PhysicalRule::Fall(Actor & actor, float gravityRate) const
{
	actor.AddVelocity(VGet(0, mGravity * gravityRate, 0));
}
