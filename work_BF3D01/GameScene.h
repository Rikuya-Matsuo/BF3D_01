#pragma once
#include "DxLib.h"
#include "SceneBase.h"
#include "Player.h"
#include "DiamondManager.h"
#include <string>

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

	std::string mScoreString;
};
