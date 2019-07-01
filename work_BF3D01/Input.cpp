#include "Input.h"

Input::Input():
	mNowKeyNum(0),
	mPrevKeyNum(1)
{
	for (int i = 0; i < KEY_MASS; i++)
	{
		mKey[0][i] = 0;
		mKey[1][i] = 0;
		mKeyState[i] = KeyStateEnum::Off;
	}
	WaitTimer(0);
}

void Input::Update()
{
	// 番号の反転
	mNowKeyNum ^= 1;
	mPrevKeyNum = 1 - mNowKeyNum;

	// このフレームにおけるキーの押下情報取得
	GetHitKeyStateAll(mKey[mNowKeyNum]);

	// キーの状態を判定
	for (int i = 0; i < KEY_MASS; ++i)
	{
		// まず、まったく押されていないキーについては無駄な判定をしたくない
		if (!mKey[mNowKeyNum][i] && !mKey[mPrevKeyNum][i])
		{
			mKeyState[i] = KeyStateEnum::Off;
			continue;
		}
		
		// このフレームで押されているか
		if (mKey[mNowKeyNum][i])
		{
			// 前のフレームで押されていたか
			if (mKey[mPrevKeyNum][i])
			{
				mKeyState[i] = KeyStateEnum::Pressed;
			}
			else
			{
				mKeyState[i] = KeyStateEnum::PushDown;
			}
		}
		else
		{
			// まったく押されていないキーについては上で判定済み
			// よって、このフレームで触れられていない場合、自動的に前フレームでは押下されていたことになる
			mKeyState[i] = KeyStateEnum::PullUp;
		}
	}
	WaitTimer(0);
}
