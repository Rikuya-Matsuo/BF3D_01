#include "Bullet.h"
#include "GameSystem.h"
#include "Input.h"

Bullet::Bullet(int modelHandle, State state, bool gravityFlag, float gravityRate, bool drawFlag):
	Actor(modelHandle, state, gravityFlag, gravityRate, drawFlag)
{
	mCollider->SetColliderTag(BoxCollider::EnemyBulletCollider);

	SetSpeed(0.2f);
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

	if (GetState() != Actor::Active)
	{
		return;
	}

#ifdef _DEBUG_BF3D
	if (Input::GetInstance().GetInput(KEY_INPUT_SPACE))
	{
		WaitTimer(0);
	}
#endif

	mPosition = VAdd(mPosition, mVelocity);

	if (mPosition.y < 0 && mVelocity.y < 0)
	{
		mVelocity.y *= -1;
	}
}

void Bullet::Draw()
{
	//DrawPixel3D(mPosition, mColor);
	DrawSphere3D(mPosition, 0.1f, 8, mColor, GetColor(255, 255, 255), TRUE);
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
		//SetState(State::Dead);
	}
}
