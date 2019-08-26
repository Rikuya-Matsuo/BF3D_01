#pragma once
#include "DxLib.h"
#include "GTitanic.h"
#include "Graph.h"
#include "SceneBase.h"
#include "Player.h"
#include "DiamondManager.h"
#include "TitleScene.h"
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

	const float mTimeLimit;

	float mTimer;

	GraphF mGameOverGraph;

	int mGoalGraph;

	float mGameOverGraphY;

	const float mGameOverGraphYSpeed;

	std::string mScoreString;
};
