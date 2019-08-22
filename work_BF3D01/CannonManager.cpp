#include "CannonManager.h"

CannonManager::CannonManager(const char * modelFileName, int cannonMass) :
	Actor(MV1LoadModel(modelFileName), State::Active, false, 0.0f, false),
	mCannonMass(cannonMass),
	mActiveBulletMass(0),
	mTarget(NULL),
	mShootInterval(1.5f),
	mShootTimer(0.0f)
{
	int i;

	for (i = 0; i < mCannonMass; ++i)
	{
		mCannons.emplace_back(new Cannon(MV1DuplicateModel(mModelHandle)));
	}
	for (i = 0; i < mCannonMass; ++i)
	{
		mCannons[i]->SetPosition(VGet((i + 1) * 350.0f, 30.0f, 0.0f));
	}

	for (i = 0; i < mActiveBulletMassLimit; ++i)
	{
		mBullets.emplace_back(new Bullet(-1));
	}

	unsigned int cl = GetColor(255, 255, 0);
	for (i = 0; i < mActiveBulletMassLimit; ++i)
	{
		mBullets[i]->SetColor(cl);
	}
}

CannonManager::~CannonManager()
{
	mCannons.clear();
	mBullets.clear();
}

void CannonManager::Update(float deltaTime)
{
	// アクター状態がアクティブでなければ関数を抜ける
	if (mState != Actor::Active)
	{
		return;
	}

	// 発射インターバルが終了していなければ関数を抜ける
	mShootTimer += deltaTime;
	if (mShootTimer <= mShootInterval)
	{
		return;
	}

	mActiveBulletMass = 0;
	for (int i = 0; i < mActiveBulletMassLimit; ++i)
	{
		if (mBullets[i]->GetState() == Actor::Active)
		{
			mActiveBulletMass++;
		}
	}

	// アクティブな弾が規定数あるなら関数を抜ける
	if (!(mActiveBulletMass < mActiveBulletMassLimit))
	{
		return;
	}

	VECTOR leastVector = VSub(mTarget->GetPosition(), mCannons[0]->GetPosition());
	float leastDistance = VSize(leastVector);
	int bestCannonNum = 0;
	for (int i = 1; i < mCannonMass; ++i)
	{
		VECTOR competeVector = VSub(mTarget->GetPosition(), mCannons[i]->GetPosition());
		float competeDistance = VSize(competeVector);

		if (leastDistance > competeDistance)
		{
			leastVector = competeVector;
			leastDistance = competeDistance;
			bestCannonNum = i;
		}
	}

	int bulletNum;
	for (int i = 0; i < mActiveBulletMassLimit; ++i)
	{
		if (mBullets[i]->GetState() == Actor::Dead)
		{
			bulletNum = i;
			break;
		}
	}

	if (!CheckCameraViewClip(mCannons[bestCannonNum]->GetPosition()))
	{
		mCannons[bestCannonNum]->Shoot(leastVector, mBullets[bulletNum]);
		
		// 発射後の発射タイマーリセット
		mShootTimer = 0.0f;
	}
}

void CannonManager::SetScenePointerForChildren(SceneBase * scene)
{
	for (auto child : mCannons)
	{
		child->SetScenePointer(scene);
	}
}
