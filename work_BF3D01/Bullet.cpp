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

	if (CheckCameraViewClip(mPosition))
	{
		SetState(State::Dead);
	}

	if (mState != State::Active)
	{
		return;
	}

	mPosition = VAdd(mPosition, mVelocity);
	mCollider->SetVertexes(VAdd(mPosition,mBetweenPosAndVertexes), VSub(mPosition, mBetweenPosAndVertexes));
	/*
	if (mPosition.y - mRadius < 0 && mVelocity.y < 0)
	{
		mVelocity.y *= -1;
	}
	*/
}

void Bullet::Draw()
{
	if (mState != State::Active)
	{
		return;
	}

	//DrawPixel3D(mPosition, mColor);
	DrawSphere3D(mPosition, mRadius, 256, mColor, GetColor(255, 255, 255), TRUE);

	mCollider->Draw();
}

void Bullet::OnCollisionHit(const BoxCollider & opponentCollision)
{
	char opponentTag = opponentCollision.GetColliderTag();

	if (opponentTag == BoxCollider::GroundCollider)
	{
		// 4つの頂点の座標
		VECTOR corners[4];
		mCollider->GetCornerPositionArrayNear(corners, 4);

		// 頂点がコリジョンと重なっているかのフラグ
		unsigned char cornerHitFlags = 0;
		for (int i = 0; i < 4; ++i)
		{
			if (CheckCollisionAndPoint_2DVersion(corners[i], opponentCollision))
			{
				unsigned char mask = 0b00000001 << ((4 - 1) - i);
				cornerHitFlags |= mask;
			}
		}

		// どの角がコリジョンと衝突しているかの判定
		// 下2つ、ないしは上2つが衝突しているなら垂直方向の速度を反転
		if (cornerHitFlags == 0b00000011 || cornerHitFlags == 0b00001100)
		{
			mVelocity.y *= -1;

			// 位置の調整
			if (cornerHitFlags == 0b00000011)
			{
				float groundY = opponentCollision.GetLargeValueVertex().y;

				SetPosition(VGet(mPosition.x, groundY + mRadius, mPosition.z));
			}
			else
			{
				float ceilingY = opponentCollision.GetSmallValueVertex().y;

				SetPosition(VGet(mPosition.x, ceilingY - mRadius, mPosition.z));
			}
		}
		
		// 左2つ、ないしは右2つが衝突しているなら水平方向の速度を反転
		else if (cornerHitFlags == 0b00000110 || cornerHitFlags == 0b00001001)
		{
			mVelocity.x *= -1;

			// 位置の調整
			if (cornerHitFlags == 0b00000110)
			{
				float wallX = opponentCollision.GetLargeValueVertex().x;

				SetPosition(VGet(mPosition.x, wallX + mRadius, mPosition.z));
			}
			else
			{
				float wallX = opponentCollision.GetSmallValueVertex().x;

				SetPosition(VGet(mPosition.x, wallX - mRadius, mPosition.z));
			}
		}

		// 埋まっている場合
		else if (cornerHitFlags == 0x0f)
		{
			// トラブル発生。ステートをDeadにセットする。
			SetState(Actor::Dead);

#ifdef _DEBUG_BF3D
			printfDx("Bulletが地面コリジョンに埋まりました。StateをDeadにします。\n");
#endif
		}

		// 角が1つだけ衝突している場合
		else
		{
			// 縦横の埋まりの長さ
			float overlapX;
			float overlapY;

			// 左右どちらが衝突しているか
			bool rightHit;

			// 上下どちらが衝突しているか
			bool upHit;

			// 右
			if (cornerHitFlags & 0b00001001)
			{
				overlapX = mCollider->GetLargeValueVertex().x - opponentCollision.GetSmallValueVertex().x;
				rightHit = true;
			}
			// 左
			else
			{
				overlapX = opponentCollision.GetLargeValueVertex().x - mCollider->GetSmallValueVertex().x;
				rightHit = false;
			}

			// 上
			if (cornerHitFlags & 0b00001100)
			{
				overlapY = mCollider->GetLargeValueVertex().y - opponentCollision.GetSmallValueVertex().y;
				upHit = true;
			}
			// 下
			else
			{
				overlapY = opponentCollision.GetLargeValueVertex().y - mCollider->GetSmallValueVertex().y;
				upHit = false;
			}

			// 横方向の埋まりのほうが大きい場合、コリジョンを床として扱う
			if (overlapX > overlapY)
			{
				// 垂直速度反転
				mVelocity.y *= -1;

				// 位置調整
				float fixedY = mPosition.y;
				fixedY += (upHit) ? -overlapY : overlapY;

				SetPosition(VGet(mPosition.x, fixedY, mPosition.z));				
			}
			// 縦方向の埋まりが横方向のそれ以上である場合、コリジョンを壁として扱う
			else
			{
				// 水平速度反転
				mVelocity.x *= -1;

				// 位置調整
				float fixedX = mPosition.x;
				fixedX += (rightHit) ? -overlapX : overlapX;

				SetPosition(VGet(fixedX, mPosition.y, mPosition.z));
			}
		}
	}
}
