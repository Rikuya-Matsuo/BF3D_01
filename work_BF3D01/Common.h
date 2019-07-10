#pragma once
#include "DxLib.h"

#define ABSOLUTE_VALUE(x) (x > 0) ? x : -x

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
// （DrawCube3D関数というものがあるならもっと早く知りたかった……（泣））
void DrawRectangle3D(const VECTOR& pos1, const VECTOR& pos2, unsigned int color, int fillFlag = TRUE);

// 値調節関数
// valueの値がmin未満ならminを、maxを超過してればmaxを返却する。
// いずれでもないときはそのまま返す。
float Clamp(float value, float min, float max);
