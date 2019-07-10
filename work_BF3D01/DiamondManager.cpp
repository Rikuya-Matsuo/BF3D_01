#include "DiamondManager.h"

DiamondManager::DiamondManager(const char * fileName, int diamondMass) :
	mChildMass(diamondMass),
	mModelHandle(MV1LoadModel(fileName))
{
	for (int i = 0; i < mChildMass; ++i)
	{
		mDiamonds.emplace_back(new Diamond(MV1DuplicateModel(mModelHandle)));
	}

	for (int i = 0; i < mChildMass; ++i)
	{
		mDiamonds[i]->SetPosition(VGet(200.0f * (i + 1), 50.0f, 0.0f));
	}
}

DiamondManager::~DiamondManager()
{
	// swap�Z�@�ƌĂ΂���i�ŁAvector���v�f�̃f�X�g���N�^���쓮������
	std::vector<Diamond *>().swap(mDiamonds);

	if (mModelHandle > 0)
	{
		MV1DeleteModel(mModelHandle);
	}
}
