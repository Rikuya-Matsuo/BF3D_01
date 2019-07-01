#include "Player.h"
#include "GameSystem.h"
#include "Input.h"
#include "PhysicalRule.h"

Player::Player(State state, bool gravityFlag, float gravityRate, bool drawFlag):
	Actor(state, gravityFlag, gravityRate, drawFlag),
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

	PhysicalRule::GetInstance().Fall(*this);
}

void Player::Move()
{
	mVelocity = VScale(mVelocity, GameSystem::GetInstance().GetDeltaTime());
	mPosition = VAdd(mPosition, mVelocity);
}
