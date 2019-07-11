#include "CannonManager.h"

CannonManager::CannonManager(const char * modelFileName, int cannonMass) :
	Actor(MV1LoadModel(modelFileName), State::Active, false, 0.0f, false),
	mCannonMass(cannonMass),
	mActiveBulletMass(0)
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

	
}
