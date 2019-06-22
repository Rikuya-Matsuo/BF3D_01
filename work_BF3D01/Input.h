#pragma once
#define KEY_MASS 256

enum KeyStateNum
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
	Input() {}
	virtual ~Input() {};

	KeyStateNum key[KEY_MASS];
	KeyStateNum keyState[2][KEY_MASS];

	char nowKey;
	char prevKey;

public:
	Input& GetInstance()
	{
		static Input instance;
		return instance;
	}

	void Update();

	KeyStateNum GetInput(int keyCode) { return key[keyCode]; }

};
