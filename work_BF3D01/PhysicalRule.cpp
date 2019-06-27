#include "PhysicalRule.h"

PhysicalRule::~PhysicalRule()
{
}

void PhysicalRule::Fall(Actor & actor)
{
	actor.AddPosition(VGet(0, mGravity, 0));
}
