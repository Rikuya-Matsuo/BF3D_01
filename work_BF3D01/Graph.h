#pragma once

struct GraphF
{
	// ハンドル
	int handle;

	// 透過フラグ
	int trans;

	// 表示座標
	VECTOR position;

	// サイズ
	float w;
	float h;

	// 拡大率
	float extendRate;
};
