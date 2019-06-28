#pragma once
#include "Actor.h"

class PhysicalRule final
{
public:
	static PhysicalRule& GetInstance()
	{
		static PhysicalRule instance;
		return instance;
	}

	~PhysicalRule();

	//�A�N�^�[�𗎉�������֐�
	void Fall(Actor& actor, float gravityRate = 1.0f);

private:
	PhysicalRule();

	float mGravity;
};

