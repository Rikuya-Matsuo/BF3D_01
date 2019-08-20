#include "Camera.h"

void Camera::SetNearFar(float in_near, float in_far)
{
	mNear = in_near;
	mFar = in_far;
	SetCameraNearFar(mNear, mFar);
}

Camera::Camera(float in_near, float in_far):
	mFollowActor(NULL),
	mPosition(VGet(0.0f, 0.0f, 0.0f)),
	mNear(in_near),
	mFar(in_far),
	mFollowFlag(true)
{
	SetCameraNearFar(mNear, mFar);
}


Camera::~Camera()
{
}

void Camera::Update()
{
	if (mFollowFlag)
	{
		VECTOR pos = mFollowActor->GetPosition();
		pos.y += 5.0f;
		pos.z -= 95.0f;

		mPosition = pos;
	}

	SetCameraPositionAndTarget_UpVecY(mPosition, mFollowActor->GetPosition());
}
