#include "Bullet.h"
#include "GameSystem.h"
#include "Input.h"

Bullet::Bullet(int modelHandle, State state, bool gravityFlag, float gravityRate, bool drawFlag):
	Actor(modelHandle, state, gravityFlag, gravityRate, drawFlag),
	mRadius(5.0f),
	mBetweenPosAndVertexes(VGet(mRadius, mRadius, 0))
{
	mCollider->SetColliderTag(BoxCollider::EnemyBulletCollider);
	mCollider->SetVertexes(VAdd(mPosition, mBetweenPosAndVertexes), VSub(mPosition, mBetweenPosAndVertexes));

	SetSpeed(0.2f);

	mPosition = VGet(-10.0f, -10.0f, 0);
}

Bullet::~Bullet()
{
}

void Bullet::Update(float deltaTime)
{
#ifdef _DEBUG_BF3D
	if (Input::GetInstance().GetInput(KEY_INPUT_SPACE))
	{
		WaitTimer(0);
	}
#endif

	if (!CheckCameraViewClip(mPosition))
	{
		SetState(State::Dead);
	}
	else
	{
		SetState(State::Active);
	}

	if (GetState() != State::Active)
	{
		return;
	}

	mPosition = VAdd(mPosition, mVelocity);
	mCollider->SetVertexes(VAdd(mPosition,mBetweenPosAndVertexes), VSub(mPosition, mBetweenPosAndVertexes));

	if (mPosition.y < 0 && mVelocity.y < 0)
	{
		mVelocity.y *= -1;
	}
}

void Bullet::Draw()
{
	//DrawPixel3D(mPosition, mColor);
	DrawSphere3D(mPosition, mRadius, 256, mColor, GetColor(255, 255, 255), TRUE);

	mCollider->Draw();
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
