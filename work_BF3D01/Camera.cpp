#include "Camera.h"



void Camera::SetNearFar(float in_near, float in_far)
{
	mNear = in_near;
	mFar = in_far;
	SetCameraNearFar(mNear, mFar);
}

Camera::Camera():
	mPosition(VGet(0.0f, 0.0f, 0.0f)),
	mNear(0.1f),
	mFar(1000.0f)
{
}


Camera::~Camera()
{
}

void Camera::Update()
{
}
