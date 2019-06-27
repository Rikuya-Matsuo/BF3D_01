#pragma once
#include "DxLib.h"

class Common final
{
public:
	Common& GetInstance()
	{
		static Common instance;
		return instance;
	}
	~Common() {};

private:
	Common();
};
