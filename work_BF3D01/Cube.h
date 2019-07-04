#pragma once
#include "DxLib.h"

class Cube
{
public:
	Cube();
	virtual ~Cube();

	bool GetCollisionFlag() const { return mCollisionFlag; }

	void SetVertexes(VECTOR vertex, VECTOR inversion);
	void SetColor(unsigned int value) { mColor = value; }
	void SetCollisionFlag(bool value) { mCollisionFlag = value; }

	void Move(VECTOR velocity);

	void Draw() const;

protected:
	// �L���[�u�̒��_�Ƃ��̔��Α��̒��_�̊e���W
	VECTOR mVertex;
	VECTOR mInversionVertex;

	// �L���[�u�̐F
	unsigned int mColor;

	// �R���W������݂��邩�̃t���O
	bool mCollisionFlag;
};

