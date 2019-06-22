#pragma once
#include "DxLib.h"

class Actor
{
public:
	enum State
	{
		Active,
		Paused,
		Dead,
	};

	// セッター
	void SetPosition(VECTOR value) { mPosition = value; }

	// ゲッター
	const VECTOR& GetPosition() const { return mPosition; }

protected:
	VECTOR mPosition;

};
