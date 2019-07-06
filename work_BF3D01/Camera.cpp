#include "Camera.h"

void Camera::SetNearFar(float in_near, float in_far)
{
	mNear = in_near;
	mFar = in_far;
	SetCameraNearFar(mNear, mFar);
}

Camera::Camera(const Actor& follow):
	mFollowActor((Actor *)(&follow)),
	mPosition(VGet(0.0f, 0.0f, 0.0f)),
	mNear(0.1f),
	mFar(1000.0f),
	mFollowFlag(true)
{
}


Camera::~Camera()
{
}

void Camera::Update()
{
	if (mFollowFlag)
	{
		VECTOR pos = mFollowActor->GetPosition();
		pos.z -= 10.0f;

		mPosition = pos;
	}
}
