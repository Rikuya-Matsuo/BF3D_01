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

	//アクターを落下させる関数
	void Fall(Actor& actor);

private:
	PhysicalRule();

	float mGravity;
};

