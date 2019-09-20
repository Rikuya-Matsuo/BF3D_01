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
	// 保有するアイテムの数
	const int mChildMass;

	// アイテムへのポインタのベクターデータ
	std::vector<Diamond *> mDiamonds;

	// アイテムのモデルのハンドル
	static int mChildModelHandle;
};

