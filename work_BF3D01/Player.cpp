#include "Player.h"
#include "GameSystem.h"
#include "Input.h"
#include "PhysicalRule.h"

Player::Player(int modelHandle, State state, bool gravityFlag, float gravityRate, bool drawFlag):
	Actor(modelHandle, state, gravityFlag, gravityRate, drawFlag),
	mFlapForce(-20.0f)
{
}

Player::~Player()
{
}

void Player::Update(float deltaTime)
{
	float verticalVelocity = 0.0f;
	float horizontalVelocity = 0.0f;

	if (Input::GetInstance().GetKeyDown(KEY_INPUT_UP))
	{
		AddVelocityY(mFlapForce);
	}

	if (Input::GetInstance().GetKeyPressed(KEY_INPUT_LEFT))
	{
		AddVelocityX(-mSpeed);
	}

	if (Input::GetInstance().GetKeyPressed(KEY_INPUT_RIGHT))
	{
		AddVelocityX(mSpeed);
	}

#ifdef _PHYSICAL_RULE

	PhysicalRule::GetInstance().Fall(*this);

#endif // _PHYSICAL_RULE

	Move();

	MV1SetPosition(mModelHandle, mPosition);

	VECTOR scale = MV1GetScale(mModelHandle);
	printfDx("Scale:%f, %f, %f", scale.x, scale.y, scale.z);
}

void Player::Move()
{
	mVelocity = VScale(mVelocity, GameSystem::GetInstance().GetDeltaTime());
	mPosition = VAdd(mPosition, mVelocity);
}
