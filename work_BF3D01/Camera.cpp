#include "Camera.h"

void Camera::SetNearFar(float in_near, float in_far)
{
	mNear = in_near;
	mFar = in_far;
	SetCameraNearFar(mNear, mFar);
}

Camera::Camera():
	mFollowActor(NULL),
	mPosition(VGet(0.0f, 0.0f, 0.0f)),
	mNear(0.1f),
	mFar(1500.0f),
	mFollowFlag(true)
{
}


Camera::~Camera()
{
	delete mFollowActor;
}

void Camera::Update()
{
	if (mFollowFlag)
	{
		VECTOR pos = mFollowActor->GetPosition();
		pos.z -= 95.0f;

		mPosition = pos;
	}

	SetCameraPositionAndTarget_UpVecY(mPosition, mFollowActor->GetPosition());
}
