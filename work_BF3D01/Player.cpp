#include "Player.h"
#include "GameSystem.h"
#include "Input.h"
#include "PhysicalRule.h"

Player::Player(int modelHandle, State state, bool gravityFlag, float gravityRate, bool drawFlag):
	Actor(modelHandle, state, gravityFlag, gravityRate, drawFlag),
	mFlapForce(-20.0f),
	brakeRate(2.0f),
	//mBalloonModel(MV1LoadModel("Data/Model/Balloon/ballon.x")),
	mBalloonPositionOffset(VGet(0.0f, 5.0f, 0.0f))
{
	SetSpeed(1.5f);
	MV1SetRotationXYZ(mModelHandle, VGet(0.0f, -DX_PI_F / 2.0f, 0.0f));

	MV1SetPosition(mBalloonModel, VAdd(mPosition, mBalloonPositionOffset));
}

Player::~Player()
{
}

void Player::Update(float deltaTime)
{
	// 左移動か右移動のいずれかの操作がされているか
	char LRPressed = 0;

	if (Input::GetInstance().GetKeyDown(KEY_INPUT_UP))
	{
		AddVelocityY(mFlapForce);
	}

	if (Input::GetInstance().GetKeyPressed(KEY_INPUT_LEFT))
	{
		LRPressed++;
		AddVelocityX(-mSpeed * GameSystem::GetInstance().GetDeltaTime());
	}

	if (Input::GetInstance().GetKeyPressed(KEY_INPUT_RIGHT))
	{
		LRPressed++;
		AddVelocityX(mSpeed * GameSystem::GetInstance().GetDeltaTime());
	}

	// LRPressedが偶数 == どちらも押されている or 両方押されている
	if (!(LRPressed % 2))
	{
		const float velX = GetVelocity().x;
		float brake = 0.0f;

		if (velX <= brakeRate * GameSystem::GetInstance().GetDeltaTime() && velX >= -brakeRate * GameSystem::GetInstance().GetDeltaTime())
		{
			SetVelocityX(0.0f);
		}
		else if (velX > brakeRate * GameSystem::GetInstance().GetDeltaTime())
		{
			brake = -brakeRate * GameSystem::GetInstance().GetDeltaTime();
		}
		else if (velX < -brakeRate * GameSystem::GetInstance().GetDeltaTime())
		{
			brake = brakeRate * GameSystem::GetInstance().GetDeltaTime();
		}
		
		AddVelocityX(brake);
	}

#ifdef _PHYSICAL_RULE

	PhysicalRule::GetInstance().Fall(*this);

#endif // _PHYSICAL_RULE

	if (GetVelocity().x > 0)
	{
		MV1SetRotationXYZ(mModelHandle, VGet(0.0f, -DX_PI_F / 2.0f, 0.0f));
	}
	else if (GetVelocity().x < 0)
	{
		MV1SetRotationXYZ(mModelHandle, VGet(0.0f, DX_PI_F / 2.0f, 0.0f));
	}

	Move();

	// きれいごとは言ってられないんだよぉ！
	if (mPosition.y < 0)
	{
		Cube hoge(VGet(0, 0, 0), VGet(0, 0, 0), true);
		OnCollisionHit(hoge);
	}

	MV1SetPosition(mModelHandle, mPosition);
	MV1SetPosition(mBalloonModel, VAdd(mPosition, mBalloonPositionOffset));

	VECTOR pos = GetPosition();
	printfDx("PlayerPos:%f, %f, %f", pos.x, pos.y, pos.z);
}

void Player::OnCollisionHit(const Cube & opponentCollision)
{
	SetVelocityY(0.0f);
	SetPosition(VGet(mPosition.x, 0.0f, mPosition.z));
}

void Player::Move()
{
	//mVelocity = VScale(mVelocity, GameSystem::GetInstance().GetDeltaTime());
	mPosition = VAdd(mPosition, mVelocity);
}
