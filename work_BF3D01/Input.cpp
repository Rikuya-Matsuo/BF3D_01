#include "Input.h"

Input::Input():
	mNowKey(0),
	mPrevKey(1)
{
	for (int i = 0; i < KEY_MASS; i++)
	{
		mKey[0][i] = 0;
		mKey[1][i] = 0;
		mKeyState[i] = KeyStateEnum::Off;
	}
}

void Input::Update()
{
	// （あってる・・・？）
	mNowKey ^= 1;
	mPrevKey = 1 - mNowKey;

	GetHitKeyStateAll(mKey[mNowKey]);
}
