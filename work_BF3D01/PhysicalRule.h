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

	//アクターを落下させる関数
	void Fall(Actor& actor, float gravityRate = 1.0f);

private:
	PhysicalRule();

	float mGravity;
};

