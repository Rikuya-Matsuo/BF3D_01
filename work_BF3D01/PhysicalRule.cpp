#include "PhysicalRule.h"

PhysicalRule::~PhysicalRule()
{
}

void PhysicalRule::Fall(Actor & actor)
{
	actor.AddVelocity(VGet(0, mGravity, 0));
}
