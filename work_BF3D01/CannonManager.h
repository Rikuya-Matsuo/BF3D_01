#pragma once
#include "DxLib.h"
#include "SceneBase.h"
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

	void SetScenePointer(SceneBase * scene) override;

private:
	// 同時にアクティブにする弾丸の最大数
	static const int	mActiveBulletMassLimit = 2;

	// 大砲の数
	const int				mCannonMass;

	// 発射間隔（秒）
	const float				mShootInterval;

	// 標的にするアクターへのポインタ
	Actor *					mTarget;

	// 大砲へのポインタのベクターデータ
	std::vector<Cannon *>	mCannons;

	// 弾丸のベクターデータ
	std::vector<Bullet *>	mBullets;

	// 現在のアクティブな弾丸の数
	int						mActiveBulletMass;

	// 発射してからの秒数を測るタイマー
	float					mShootTimer;
};
