#pragma once
#include "DxLib.h"

class Camera
{
public:
	Camera& GetInstance()
	{
		static Camera instance;
		return instance;
	}

	~Camera();

	void Update();

	void SetNearFar(float in_near, float in_far);
	void SetPosition(const VECTOR& pos) { mPosition = pos; }
private:
	Camera();

	// ƒJƒƒ‰ˆÊ’u
	VECTOR mPosition;

	// •`‰æË’ö
	float mNear;
	float mFar;
};

