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

	// �J�����ʒu
	VECTOR mPosition;

	// �`��˒�
	float mNear;
	float mFar;
};

