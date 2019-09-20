#pragma once
#include "DxLib.h"

class Sky
{
public:
	Sky();
	~Sky();

	// モデルの読み込み
	void LoadModel(const char * modelPath);

	void Draw();

private:
	// モデル（スカイボックス）のハンドル
	int		mModelHandle;

	// モデルのパス
	char *	mModelPath;
};

