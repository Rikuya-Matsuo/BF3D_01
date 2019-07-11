#include "Bullet.h"

Bullet::Bullet(int modelHandle, State state, bool gravityFlag, float gravityRate, bool drawFlag):
	Actor(modelHandle, state, gravityFlag, gravityRate, drawFlag),
	mSpeed(1.0f)
{
	mCollider->SetColliderTag(BoxCollider::EnemyBulletCollider);
}

Bullet::~Bullet()
{
}

void Bullet::Update(float deltaTime)
{
	if (!CheckCameraViewClip(mPosition))
	{
		SetState(State::Dead);
	}

	mPosition = VAdd(mPosition, mVelocity);
}

void Bullet::Draw()
{
	DrawPixel3D(mPosition, mColor);
}

void Bullet::OnCollisionHit(const BoxCollider & opponentCollision)
{
	char opponentTag = opponentCollision.GetColliderTag();

	if (opponentTag == BoxCollider::GroundCollider)
	{
		mVelocity.y *= -1;
	}

	if (opponentTag == BoxCollider::PlayerCollider)
	{
		SetState(State::Dead);
	}
}
