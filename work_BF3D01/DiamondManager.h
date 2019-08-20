#pragma once
#include "Diamond.h"
#include <vector>

class Diamond;

class DiamondManager
{
public:
	DiamondManager(const char * fileName, int diamondMass, SceneBase * scene);
	~DiamondManager();

private:
	std::vector<Diamond *> mDiamonds;

	const int mChildMass;

	int mModelHandle;
};

