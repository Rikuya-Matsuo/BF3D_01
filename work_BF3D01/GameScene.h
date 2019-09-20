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
	// このX座標を超えたらゴール
	const float		mGoalLine;

	// シーン内に設置するアイテムの数
	const int		mDiamondMass;

	// ステージクリアまでのタイムリミット（秒）
	const float		mTimeLimit;

	// ゲームオーバー表示が画面下から登る速さ
	const float		mGameOverGraphYSpeed;
	
	// プレイヤーへのポインタ
	Player *			mPlayer;

	// アイテムマネージャへのポインタ
	DiamondManager *	mDiamondManager;

	// タイマー
	float				mTimer;

	// ゲームオーバー表示
	GraphF				mGameOverGraph;

	// ゴール表示
	int					mGoalGraph;

	// ゲームオーバー表示画像のY座標
	float				mGameOverGraphY;

	// UIとして表示するスコア
	std::string			mScoreString;
};
