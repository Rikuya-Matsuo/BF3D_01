#pragma once
#include "DxLib.h"
#include "SceneBase.h"
#include "Player.h"
#include "DiamondManager.h"

class GameScene : public SceneBase
{
public:
	GameScene();
	~GameScene();

	void Update(float deltaTime) override;
	void Draw() override;

private:
	Player * mPlayer;

	DiamondManager * mDiamondManager;

	const float mGoalLine;

	const int mDiamondMass;
};
