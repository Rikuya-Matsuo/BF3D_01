#include "Bullet.h"

Bullet::Bullet(int modelHandle, State state, bool gravityFlag, float gravityRate, bool drawFlag):
	Actor(modelHandle, state, gravityFlag, gravityRate, drawFlag),
	mSpeed(1.5f)
{

}

Bullet::~Bullet()
{
}
