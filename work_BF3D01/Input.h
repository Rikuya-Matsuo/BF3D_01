#pragma once
#include "DxLib.h"
#define KEY_MASS 256

class Input final
{
private:
	Input();
	virtual ~Input() {};

	char mKeyState[KEY_MASS];
	char mKey[2][KEY_MASS];

	unsigned char mKeyNeo[KEY_MASS];

	char mNowKeyNum;
	char mPrevKeyNum;

public:
	enum EnumKeyState
	{
		Off,
		PushDown,
		Pressed,
		PullUp,
		Invalid_KeyState
	};

	static Input& GetInstance()
	{
		static Input instance;
		return instance;
	}

	void Update();
	void UpdateNeo();

	char GetInput(int keyCode) { return mKeyState[keyCode]; }
	bool GetKeyDown(int keyCode) { return (mKeyState[keyCode] == EnumKeyState::PushDown); }
	bool GetKeyPressed(int keyCode) { return (mKeyState[keyCode] == EnumKeyState::Pressed); }
	bool GetKeyUp(int keyCode) { return (mKeyState[keyCode] == EnumKeyState::PullUp); }

	bool GetKeyNeo(int keyCode) { return (mKeyNeo[keyCode] & 1); }
	bool GetKeyDownNeo(int keyCode) { return (mKeyNeo[keyCode] == 1); }
	bool GetKeyPressedNeo(int keyCode) { return (mKeyNeo[keyCode] == 3); }
	bool GetKeyUpNeo(int keyCode) { return (mKeyNeo[keyCode] == 2); }
};
