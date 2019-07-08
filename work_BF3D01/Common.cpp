#include "Common.h"

void DrawRectangle3D(const VECTOR& pos1, const VECTOR& pos2, unsigned int color, int fillFlag)
{
	// 描画する長方形の頂点
	VECTOR vertex[4];

	vertex[0] = pos1;
	vertex[1] = VGet(pos2.x, pos1.y, pos1.z);
	vertex[2] = VGet(pos1.x, pos2.y, pos2.z);
	vertex[3] = pos2;

	/*
	頂点番号の振り分け↓

	0			1
	 +---------+
	 |         |
	 +---------+
	2			3
	*/

	// 三角形012と123を描画することによって矩形を表現する
	DrawTriangle3D(vertex[0], vertex[1], vertex[2], color, fillFlag);
	DrawTriangle3D(vertex[3], vertex[1], vertex[2], color, fillFlag);
}

float Clamp(float value, float min, float max)
{
	if (value < min)
	{
		value = min;
	}
	else if (value > max)
	{
		value = max;
	}

	return value;
}
