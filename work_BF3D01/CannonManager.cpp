#include "CannonManager.h"

CannonManager::CannonManager(const char * modelFileName, int cannonMass) :
	Actor(MV1LoadModel(modelFileName), State::Active, false, 0.0f, false),
	mCannonMass(cannonMass),
	mActiveBulletMass(0),
	mTarget(NULL)
{
	int i;

	for (i = 0; i < mCannonMass; ++i)
	{
		mCannons.emplace_back(new Cannon(MV1DuplicateModel(mModelHandle)));
	}
	for (i = 0; i < mCannonMass; ++i)
	{
		mCannons[i]->SetPosition(VGet((i + 1) * 350.0f, 75.0f, 0.0f));
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
}

void CannonManager::Update(float deltaTime)
{
	// アクティブな弾が規定数あるなら関数を抜ける
	if (!(mActiveBulletMass < mActiveBulletMassLimit))
	{
		return;
	}

	VECTOR leastDistance = VSub(mTarget->GetPosition(), mCannons[0]->GetPosition());
	float distance = VSize(leastDistance);
	int bestCannonNum = 0;
	for (int i = 1; i < mCannonMass; ++i)
	{
		VECTOR hoge = VSub(mTarget->GetPosition(), mCannons[i]->GetPosition());
		float compete = VSize(hoge);

		if (distance > compete)
		{
			distance = compete;
			bestCannonNum = i;
		}
	}

	int bulletNum;
	for (int i = 0; i < mActiveBulletMassLimit; ++i)
	{
		if (mBullets[i]->GetState() == Actor::Active)
		{
			bulletNum = i;
			break;
		}
	}
	mCannons[bestCannonNum]->Shoot(leastDistance, mBullets[bulletNum]);
}
