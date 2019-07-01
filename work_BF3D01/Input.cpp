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
	// �ԍ��̔��]
	mNowKeyNum ^= 1;
	mPrevKeyNum = 1 - mNowKeyNum;

	// ���̃t���[���ɂ�����L�[�̉������擾
	GetHitKeyStateAll(mKey[mNowKeyNum]);

	// �L�[�̏�Ԃ𔻒�
	for (int i = 0; i < KEY_MASS; ++i)
	{
		// �܂��A�܂�����������Ă��Ȃ��L�[�ɂ��Ă͖��ʂȔ�����������Ȃ�
		if (!mKey[mNowKeyNum][i] && !mKey[mPrevKeyNum][i])
		{
			mKeyState[i] = KeyStateEnum::Off;
			continue;
		}
		
		// ���̃t���[���ŉ�����Ă��邩
		if (mKey[mNowKeyNum][i])
		{
			// �O�̃t���[���ŉ�����Ă�����
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
			// �܂�����������Ă��Ȃ��L�[�ɂ��Ă͏�Ŕ���ς�
			// ����āA���̃t���[���ŐG����Ă��Ȃ��ꍇ�A�����I�ɑO�t���[���ł͉�������Ă������ƂɂȂ�
			mKeyState[i] = KeyStateEnum::PullUp;
		}
	}
	WaitTimer(0);
}
