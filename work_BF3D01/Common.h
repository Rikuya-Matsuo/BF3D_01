#pragma once
#include "DxLib.h"
/*
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
*/

// 3D空間上に長方形を描画する
void DrawRectangle3D(const VECTOR& pos1, const VECTOR& pos2, unsigned int color, int fillFlag = TRUE);
