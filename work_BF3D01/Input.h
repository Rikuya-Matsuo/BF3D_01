#pragma once
#include "DxLib.h"
#define KEY_MASS 256

enum KeyStateEnum
{
	Off,
	PushDown,
	Pressed,
	PullUp,
	Invalid
};

class Input final
{
private:
	Input();
	virtual ~Input() {};

	char mKeyState[KEY_MASS];
	char mKey[2][KEY_MASS];

	char mNowKeyNum;
	char mPrevKeyNum;

public:
	static Input& GetInstance()
	{
		static Input instance;
		return instance;
	}

	void Update();

	char GetInput(int keyCode) { return mKeyState[keyCode]; }
	bool GetKeyDown(int keyCode) { return (mKeyState[keyCode] == KeyStateEnum::PushDown); }
	bool GetKeyPressed(int keyCode) { return (mKeyState[keyCode] == KeyStateEnum::Pressed); }
	bool GetKeyUp(int keyCode) { return (mKeyState[keyCode] == KeyStateEnum::PullUp); }

};
