#pragma once
#include "DxLib.h"

class Sky
{
public:
	Sky();
	~Sky();

	void LoadModel(const char * modelDirectory);

	void Draw();

private:
	int mModelHandle;

	char * mModelDirectory;
};

