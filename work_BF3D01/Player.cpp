#include "Player.h"
#include "GameSystem.h"
#include "Input.h"
#include "PhysicalRule.h"

Player::Player(int modelHandle, State state, bool gravityFlag, float gravityRate, bool drawFlag) :
	Actor(modelHandle, state, gravityFlag, gravityRate, drawFlag),
	mFlapForce(3.0f),
	mBrakeRate(1.5f),
	mSpeedLimit(5.0f),
	mItemCollect(0),
	//mBalloonModel(MV1LoadModel("Data/Model/Balloon/ballon.x")),
	mBalloonPositionOffset(VGet(0.0f, 5.0f, 0.0f))
{
	SetSpeed(1.8f);
	MV1SetRotationXYZ(mModelHandle, VGet(0.0f, -DX_PI_F / 2.0f, 0.0f));

	//MV1SetPosition(mBalloonModel, VAdd(mPosition, mBalloonPositionOffset));

	mCollider->SetPosition(VSub(mPosition, VGet(1, 0, 0)));
	mCollider->SetColliderTag(BoxCollider::PlayerCollider);
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

	// X方向の速さの調整
	float fixedVelX = Clamp(GetVelocity().x, -mSpeedLimit, mSpeedLimit);
	SetVelocityX(fixedVelX);

	// Y方向の上昇力の調整
	if (GetVelocity().y > mFlapForce)
	{
		SetVelocityY(mFlapForce);
	}

	// LRPressedが偶数 == どちらも押されている or 両方押されている
	if (!(LRPressed % 2))
	{
		const float velX = GetVelocity().x;
		float brake = 0.0f;

		if (velX <= mBrakeRate * GameSystem::GetInstance().GetDeltaTime() && velX >= -mBrakeRate * GameSystem::GetInstance().GetDeltaTime())
		{
			SetVelocityX(0.0f);
		}
		else if (velX > mBrakeRate * GameSystem::GetInstance().GetDeltaTime())
		{
			brake = -mBrakeRate * GameSystem::GetInstance().GetDeltaTime();
		}
		else if (velX < -mBrakeRate * GameSystem::GetInstance().GetDeltaTime())
		{
			brake = mBrakeRate * GameSystem::GetInstance().GetDeltaTime();
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
	// （要約：時間がないのでちゃんとした当たり判定は後程）
	if (mPosition.y < 0)
	{
		if (!Input::GetInstance().GetKeyDown(KEY_INPUT_UP))
		{
			SetVelocityY(0.0f);
			SetPosition(VGet(mPosition.x, 0.0f, mPosition.z));
		}
		/*
		BoxCollider hoge(NULL, VGet(0, 0, 0), VGet(0, 0, 0));
		OnCollisionHit(hoge);
		*/
	}

	BaseOriginalUpdate();
	MV1SetPosition(mBalloonModel, VAdd(mPosition, mBalloonPositionOffset));

	VECTOR pos = GetPosition();
	printfDx("PlayerPos:%f, %f, %f", pos.x, pos.y, pos.z);
}

void Player::OnCollisionHit(const BoxCollider & opponentCollision)
{
	char opponentTag = opponentCollision.GetColliderTag();

	if (opponentTag == BoxCollider::GroundCollider)
	{
		if (!Input::GetInstance().GetKeyDown(KEY_INPUT_UP))
		{
			SetVelocityY(0.0f);
			SetPosition(VGet(mPosition.x, 0.0f, mPosition.z));
		}
	}

	if (opponentTag == BoxCollider::ItemCollider)
	{
		mItemCollect++;
	}
}

void Player::Move()
{
	//mVelocity = VScale(mVelocity, GameSystem::GetInstance().GetDeltaTime());
	mPosition = VAdd(mPosition, mVelocity);
}

/*
今日の教訓
＊ソースコード内に日記を書いてはいけない。
*/
