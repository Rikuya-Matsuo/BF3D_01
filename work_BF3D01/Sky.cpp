#include "Sky.h"



Sky::Sky()
{
}


Sky::~Sky()
{
	if (mModelHandle > 0)
	{
		MV1DeleteModel(mModelHandle);
	}
}

void Sky::LoadModel(const char * modelDirectory)
{
	if (mModelHandle > 0)
	{
		MV1DeleteModel(mModelHandle);
	}
	mModelHandle = MV1LoadModel(modelDirectory);
	mModelDirectory = (char *)modelDirectory;

	MV1SetPosition(mModelHandle, VGet(0.0f, -300.0f, 0.0f));

	// 大きさの設定
	float scale = 10.0f;
	MV1SetScale(mModelHandle, VGet(scale, scale, scale));
}

void Sky::Draw()
{
	MV1DrawModel(mModelHandle);
}
