﻿#include "DiamondManager.h"

int DiamondManager::mChildModelHandle;

DiamondManager::DiamondManager(const char * fileName, int diamondMass, SceneBase * scene) :
	mChildMass(diamondMass)
{
	for (int i = 0; i < mChildMass; ++i)
	{
		mDiamonds.emplace_back(new Diamond(MV1DuplicateModel(mChildModelHandle)));
	}

	for (int i = 0; i < mChildMass; ++i)
	{
		mDiamonds[i]->SetPosition(VGet(200.0f * (i + 1), 50.0f, 0.0f));
		mDiamonds[i]->SetScenePointer(scene);
	}

	if (mChildModelHandle < 0)
	{
		mChildModelHandle = MV1LoadModel(fileName);
	}
}

DiamondManager::~DiamondManager()
{
	if (mChildModelHandle > 0)
	{
		MV1DeleteModel(mChildModelHandle);
	}

	std::vector<Diamond*>().swap(mDiamonds);
}
