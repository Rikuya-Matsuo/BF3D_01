#pragma once
#include "Diamond.h"
#include <vector>

class Diamond;

class DiamondManager
{
public:
	DiamondManager(const char * fileName, int diamondMass);
	~DiamondManager();

private:
	std::vector<Diamond *> mDiamonds;

	const int mChildMass;

	int mModelHandle;
};

