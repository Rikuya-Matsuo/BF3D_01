#include "Player.h"
#include "GameSystem.h"
#include "Input.h"
#include "PhysicalRule.h"

Player::Player(int modelHandle, State state, bool gravityFlag, float gravityRate, bool drawFlag) :
	Actor(modelHandle, state, gravityFlag, gravityRate, drawFlag),
	mFlapForce(1.5f),
	mBrakeRate(1.5f),
	mSpeedLimit(3.0f),
	mItemCollect(0),
	mItemEffectFlag(false),
	mItemEffectFrameMass(10),
	mItemEffectCounter(0),
	//mBalloonModel(MV1LoadModel("Data/Model/Balloon/ballon.x")),
	mBalloonPositionOffset(VGet(0.0f, 5.0f, 0.0f))
{
	SetSpeed(0.7f);
	mFallSpeedLimit = 10.0f;
	MV1SetRotationXYZ(mModelHandle, VGet(0.0f, -DX_PI_F / 2.0f, 0.0f));

	//MV1SetPosition(mBalloonModel, VAdd(mPosition, mBalloonPositionOffset));

	mCollider->SetPosition(VSub(mPosition, VGet(1, 0, 0)));
	mCollider->SetColliderTag(BoxCollider::PlayerCollider);

	mItemEffectHandleArray = new int[mItemEffectFrameMass];
	int w, h;
	int graph = LoadGraph("Data/Image/getCoin.png");
	GetGraphSize(graph, &w, &h);
	LoadDivGraph("Data/Image/getCoin.png", 10, 10, 1, w / 10, h / 1, mItemEffectHandleArray);
}

Player::~Player()
{
	delete[] mItemEffectHandleArray;
}

void Player::Update(float deltaTime)
{
	if (GetState() == Actor::Dead)
	{
		printfDx("ゲームオーバー");
	}

	// アイテムエフェクトの更新
	UpdateItemEffect();

	// 左移動か右移動のいずれかの操作がされているか
	char LRPressed = 0;

	if (Input::GetInstance().GetKeyDown(KEY_INPUT_UP))
	{
		AddVelocityY(mFlapForce);
	}

	if (Input::GetInstance().GetKeyPressed(KEY_INPUT_LEFT))
	{
		LRPressed++;
		AddVelocityX(-mSpeed * deltaTime);
	}

	if (Input::GetInstance().GetKeyPressed(KEY_INPUT_RIGHT))
	{
		LRPressed++;
		AddVelocityX(mSpeed * deltaTime);
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

		if (velX <= mBrakeRate * deltaTime && velX >= -mBrakeRate * deltaTime)
		{
			SetVelocityX(0.0f);
		}
		else if (velX > mBrakeRate * deltaTime)
		{
			brake = -mBrakeRate * deltaTime;
		}
		else if (velX < -mBrakeRate * deltaTime)
		{
			brake = mBrakeRate * deltaTime;
		}
		
		AddVelocityX(brake);
	}

#ifdef _PHYSICAL_RULE

	PhysicalRule::GetInstance().Fall(*this);

#endif _PHYSICAL_RULE

	if (GetVelocity().x > 0)
	{
		MV1SetRotationXYZ(mModelHandle, VGet(0.0f, -DX_PI_F / 2.0f, 0.0f));
	}
	else if (GetVelocity().x < 0)
	{
		MV1SetRotationXYZ(mModelHandle, VGet(0.0f, DX_PI_F / 2.0f, 0.0f));
	}

	Move();

	BaseOriginalUpdate();
	MV1SetPosition(mBalloonModel, VAdd(mPosition, mBalloonPositionOffset));

	VECTOR pos = GetPosition();
	printfDx("PlayerPos:%f, %f, %f", pos.x, pos.y, pos.z);
}

void Player::OnCollisionHit(const BoxCollider & opponentCollision)
{
	// 前提として、この関数に入った時点で相手と接触していることは確定している。

	char opponentTag = opponentCollision.GetColliderTag();

	if (opponentTag == BoxCollider::GroundCollider)
	{
		OnHitGround(opponentCollision);
	}

	else if (opponentTag == BoxCollider::ItemCollider)
	{
		mItemCollect++;

		mItemEffectCounter = 0;
		mItemEffectFlag = true;
	}

	else if (opponentTag == BoxCollider::EnemyBulletCollider)
	{
		SetState(Actor::Dead);
	}
}

void Player::Draw()
{
	BaseOriginalDraw();

	if (mItemEffectFlag)
	{
		float x = mPosition.x;
		float y = mPosition.y;
		float z = mPosition.z - 5.0f;
		DrawRotaGraph3D(x, y, z, 0.5, 0, mItemEffectHandleArray[mItemEffectCounter++], TRUE);
	}
}

void Player::Move()
{
	//mVelocity = VScale(mVelocity, GameSystem::GetInstance().GetDeltaTime());
	mPosition = VAdd(mPosition, mVelocity);
}

void Player::UpdateItemEffect()
{
	if (mItemEffectFlag && mItemEffectCounter >= mItemEffectFrameMass)
	{
		mItemEffectFlag = false;
		mItemEffectCounter = 0;
	}
}

void Player::OnHitGround(const BoxCollider & opponentCollision)
{
	VECTOR smallValueEdge = opponentCollision.GetSmallValueVertex();
	VECTOR largeValueEdge = opponentCollision.GetLargeValueVertex();

	//////////////////////////////////////////////////////////////
	// step1.
	// まず、当たった地面を床として扱うか、壁として扱うかを判定する
	//////////////////////////////////////////////////////////////

	// コリジョンの扱い
	// ちょっと腑に落ちない書き方だけど・・・。
	bool collisionIsGround = false;
	bool collisionIsCeiling = false;
	bool collisionIsWall = false;

	// コリジョンの角の数
	// めんどくさいけどマジックナンバーを減らすため
	// （ないだろうけど、「もしコリジョンの形が変わったら」と考えたとき、書き換えが多少は楽）
	const int cornerMass = 4;

	// 四隅の座標
	// 添え字番号の順番は二次元グラフの象限と同じ数え方とする。
	// 0->右上, 1->左上, 2->左下, 3->右下
	VECTOR cornerPos[cornerMass];
	cornerPos[0] = VGet(mCollider->GetLargeValueVertex().x, mCollider->GetLargeValueVertex().y, 0.0f);
	cornerPos[1] = VGet(mCollider->GetSmallValueVertex().x, mCollider->GetLargeValueVertex().y, 0.0f);
	cornerPos[2] = VGet(mCollider->GetSmallValueVertex().x, mCollider->GetSmallValueVertex().y, 0.0f);
	cornerPos[3] = VGet(mCollider->GetLargeValueVertex().x, mCollider->GetSmallValueVertex().y, 0.0f);

	// 四隅それぞれの、相手コリジョンと当たっているかのフラグ
	// ビットフラグ使ってみたかったんじゃぁ
	// 一番最後のビットが、最後の角番号のフラグとなるよう、上から格納する。（語彙力・・・( ;∀;)）
	// 今回の場合、下から四番目のビットが0番の角のフラグで、一番下が3番の角のフラグ。
	//bool cornerHitFlag[cornerMass];
	unsigned char cornerHitFlags = 0;
	for (int i = 0; i < cornerMass; ++i)
	{
		// cornerHitFlag[i] = CheckCollisionAndPoint_2DVersion(cornerPos[i], opponentCollision);
		if (CheckCollisionAndPoint_2DVersion(cornerPos[i], opponentCollision))
		{
			unsigned char mask = 0b00000001 << ((cornerMass - 1) - i);
			cornerHitFlags |= mask;
		}
	}

	// コリジョンは床か
	if (cornerHitFlags == 0b00000011)
	{
		collisionIsGround = true;
	}
	// コリジョンは天井か
	else if (cornerHitFlags == 0b00001100)
	{
		collisionIsCeiling = true;
	}
	// コリジョンは壁か
	else if (cornerHitFlags == 0b00001001 || cornerHitFlags == 0b00000110)
	{
		collisionIsWall = true;
	}
	// 上記いずれのフラグ状態でもないとき
	else
	{
		// 考えられるのはフラグが１つだけ立っている場合と、フラグがすべて立っている場合
		// まずは１つだけ立っている場合の判定を行う
		if (cornerHitFlags == 0b00001000)
		{
			// 天井か壁か
			// コリジョンへのめり込みが横に長ければ天井、縦に長ければ壁と認識
			float overlapX, overlapY;
			overlapX = mCollider->GetLargeValueVertex().x - smallValueEdge.x;
			overlapY = mCollider->GetLargeValueVertex().y - smallValueEdge.y;

			if (overlapX > overlapY)
			{
				collisionIsCeiling = true;
			}
			else
			{
				collisionIsWall = true;
			}
		}
		else if (cornerHitFlags == 0b00000100)
		{
			// 天井か壁か
			// コリジョンへのめり込みが横に長ければ天井、縦に長ければ壁と認識
			float overlapX, overlapY;
			overlapX = largeValueEdge.x - mCollider->GetSmallValueVertex().x;
			overlapY = mCollider->GetLargeValueVertex().y - smallValueEdge.y;

			if (overlapX > overlapY)
			{
				collisionIsCeiling = true;
			}
			else
			{
				collisionIsWall = true;
			}
		}
		else if (cornerHitFlags == 0b00000010)
		{
			// 床か壁か
			// コリジョンへのめり込みが横に長ければ床、縦に長ければ壁と認識
			float overlapX, overlapY;
			overlapX = largeValueEdge.x - mCollider->GetSmallValueVertex().x;
			overlapY = largeValueEdge.y - mCollider->GetSmallValueVertex().y;

			if (overlapX > overlapY)
			{
				collisionIsGround = true;
			}
			else
			{
				collisionIsWall = true;
			}
		}
		else if (cornerHitFlags == 0b00000001)
		{
			// 床か壁か
			// コリジョンへのめり込みが横に長ければ床、縦に長ければ壁と認識
			float overlapX, overlapY;
			overlapX = mCollider->GetLargeValueVertex().x - smallValueEdge.x;
			overlapY = largeValueEdge.y - mCollider->GetSmallValueVertex().y;

			if (overlapX > overlapY)
			{
				collisionIsGround = true;
			}
			else
			{
				collisionIsWall = true;
			}
		}
	}
		
	//////////////////////////////////////////////////////////////
	// step2.
	// 処理を実行する
	//////////////////////////////////////////////////////////////
	
	// 着地
	// ただしジャンプ操作がされたフレームでは無効とする
	if (collisionIsGround)
	{
		if (!Input::GetInstance().GetKeyDown(KEY_INPUT_UP))
		{
			SetVelocityY(0.0f);
			SetPosition(VGet(mPosition.x, largeValueEdge.y, mPosition.z));
		}
	}

	// 天井に頭をぶつける
	else if (collisionIsCeiling)
	{
		float fixedPosY = smallValueEdge.y - mCollider->GetSize().y;

		SetVelocityY(0.0f);
		SetPosition(VGet(mPosition.x, fixedPosY, mPosition.z));
	}

	// 壁にぶつかる
	else if (collisionIsWall)
	{
		float fixedPosX;

		// 壁が右にあるか左にあるかの判定
		if (cornerHitFlags & 0b00001001)
		{
			// 右
			if (mVelocity.x > 0.0f)
			{
				SetVelocityX(0.0f);
			}

			fixedPosX = smallValueEdge.x - (mCollider->GetLargeValueVertex().x - mPosition.x);
		}
		else
		{
			// 左
			if (mVelocity.x < 0.0f)
			{
				SetVelocityY(0.0f);
			}

			fixedPosX = largeValueEdge.x + (mPosition.x - mCollider->GetSmallValueVertex().x);
		}

		SetPosition(VGet(fixedPosX, mPosition.y, mPosition.z));
	}

	// 万が一、地面に埋まってしまっている場合
	// 地面の上に吐き出す。
	else if (cornerHitFlags == 0b00001111)
	{
		SetVelocityY(0.0f);
		SetPosition(VGet(mPosition.x, largeValueEdge.y, mPosition.z));
	}

	// ↓古いコード。念のため取っておく。
	/*
	// 着地
	// ただし、ジャンプ操作がされたフレームでは無効に。
	if (mCollider->GetLargeValueVertex().y > largeValueEdge.y &&
		!Input::GetInstance().GetKeyDown(KEY_INPUT_UP))
	{
		SetVelocityY(0.0f);
		SetPosition(VGet(mPosition.x, largeValueEdge.y, mPosition.z));
	}
	// 天井に頭をぶつける
	if (mCollider->GetSmallValueVertex().y < smallValueEdge.y)
	{
		float fixedPosY = smallValueEdge.y - mCollider->GetSize().y;

		SetVelocityY(0.0f);
		SetPosition(VGet(mPosition.x, fixedPosY, mPosition.z));
	}

	// 万が一、地面に埋まってしまっている場合
	// 地面の上に吐き出す。
	if (mCollider->GetLargeValueVertex().y <= largeValueEdge.y &&
		mCollider->GetSmallValueVertex().y >= smallValueEdge.y)
	{
		SetVelocityY(0.0f);
		SetPosition(VGet(mPosition.x, largeValueEdge.y, mPosition.z));
	}
	*/
}
