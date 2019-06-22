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

	// �Z�b�^�[
	void SetPosition(VECTOR value) { mPosition = value; }

	// �Q�b�^�[
	const VECTOR& GetPosition() const { return mPosition; }

protected:
	VECTOR mPosition;

};
