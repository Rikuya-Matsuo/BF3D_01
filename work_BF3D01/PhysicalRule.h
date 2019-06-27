#pragma once
#include "Actor.h"

class PhysicalRule final
{
public:
	PhysicalRule& GetInstance()
	{
		static PhysicalRule instance;
		return instance;
	}

	~PhysicalRule();

	//�A�N�^�[�𗎉�������֐�
	void Fall(Actor& actor);

private:
	PhysicalRule();

	float mGravity;
};

