#pragma once
#include "DxLib.h"
#include "Actor.h"
#include "Bullet.h"
#include "Cannon.h"
#include <vector>

class Bullet;

class CannonManager : public Actor
{
public:
	CannonManager(const char * modelFileName, int cannonMass);
	~CannonManager();

	void Update(float deltaTime) override;

	void SetTarget(Actor * target) { mTarget = target; }

private:
	Actor * mTarget;

	const int mCannonMass;

	std::vector<Cannon *> mCannons;

	static const int mActiveBulletMassLimit = 2;

	std::vector<Bullet *> mBullets;

	int mActiveBulletMass;
};
