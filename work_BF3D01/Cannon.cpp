#include "Cannon.h"



Cannon::Cannon(int modelHandle, State state, bool gravityFlag, float gravityRate, bool drawFlag):
	Actor(modelHandle, state, gravityFlag, gravityRate, drawFlag)
{

}

Cannon::~Cannon()
{
}
