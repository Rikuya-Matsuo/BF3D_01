#include "Diamond.h"

Diamond::Diamond(int modelHandle, State state, bool gravityFlag, float gravityRate, bool drawFlag):
	Actor(modelHandle, state, gravityFlag, gravityRate, drawFlag)
{
	MV1SetRotationXYZ(mModelHandle, VGet(DX_PI_F / 2.0f, 0, 0));
}

Diamond::~Diamond()
{
}
