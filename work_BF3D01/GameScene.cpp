#include "GameScene.h"
#include "GameSystem.h"
#include "Input.h"
#include "Cube.h"
#include "Ground.h"
#include "CannonManager.h"
#include <string>

GameScene::GameScene():
	SceneBase(10.0f, 3700.0f),
	mGoalLine(2000.0f),
	mDiamondMass(10),
	mTimeLimit(60.0f),
	mTimer(mTimeLimit)
{
	// アクターへのポインタはゲームシステムクラスのベクターデータが自動で受け取ってくれる（アクタークラスのコンストラクタ参照）
	mPlayer = new Player(MV1LoadModel("Data/Model/Player/Boy.pmx"));
	mPlayer->SetPosition(VGet(0, 100, 0));
	mPlayer->SetScenePointer(this);

	for (int i = 0; i < 10; ++i)
	{
		Ground * ground = new Ground(VGet(i * 200.0f, 0, 0), VGet((i + 1) * 200.0f, -1000.0f, -50), GetColor(0, 255, 0));
		ground->LoadTexture("Data/Image/groundTexture00.jpg");
		ground->SetScenePointer(this);
	}
	
	// カメラ追従設定
	mCamera->SetFollowActor(mPlayer);

	// スカイドーム設定
	mSky.LoadModel("Data/Model/SkyDome/skydome_orca/sky_01.x");

	// ライト設定
	mLight.SetDirection(VSub(mPlayer->GetPosition(), VGet(-5.0f, 10.0f, 0)));
	COLOR_F white = GetColorF(1.0f, 1.0f, 1.0f, 1.0f);
	mLight.SetSpcColor(white);
	mLight.SetAmbColor(white);
	mLight.SetGlobalAmbientLight(white);

	// ダイアモンド設置
	mDiamondManager = new DiamondManager("Data/Model/Treasure/LuckyHammer/REPLICA_KODUCHI.pmx", mDiamondMass, this);

	// 大砲マネージャー設置
	CannonManager* cannonManager = new CannonManager("Data/Model/Cannon/Cannon/Cannon.pmx", 5);
	cannonManager->SetTarget(mPlayer);
	cannonManager->SetScenePointer(this);
}


GameScene::~GameScene()
{
	delete mDiamondManager;
}

void GameScene::Update(float deltaTime)
{
	if (!GameSystem::GetInstance().GetPauseFlag())
	{
		mTimer -= deltaTime;

		if (mTimer < 0.0f)
		{
			SetNextScene(new TitleScene);

			mGoNextSceneFlag = true;
		}
	}

#ifdef _DEBUG_BF3D
	printfDx("ゲーム画面\n");

	if (Input::GetInstance().GetKeyDown(KEY_INPUT_R))
	{
		GameSystem::GetInstance().RequestPause();

		SetNextScene(new GameScene);

		mGoNextSceneFlag = true;
	}
#endif // _DEBUG_BF3D
}

void GameScene::Draw()
{
	BaseOriginalDraw();

	{
		int fontHandle = GameSystem::GetInstance().GetFontHandleForScore();
		
		mScoreString = "Score : " + std::to_string(mPlayer->GetScore());
		DrawStringToHandle(10, 10, mScoreString.c_str(), GetColor(255, 255, 255), fontHandle, GetColor(128, 0, 128));

		int x;
		int w;
		int intTimer = (int)mTimer;
		std::string timerString = std::to_string(intTimer);
		w = GetDrawStringWidthToHandle(timerString.c_str(), strlen(timerString.c_str()), fontHandle);

		x = (GameSystem::GetInstance().GetScreenWidth() - w) / 2;

		DrawStringToHandle(x, 0, timerString.c_str(), GetColor(255, 255, 255), fontHandle, GetColor(128, 0, 128));
	}

	if (mPlayer->GetPosition().x >= mGoalLine)
	{
		std::string message = (mPlayer->GetItemCollect() >= mDiamondMass) ? "ゴール！" : "まだアイテムが残ってるよ！";

		int x, y;
		int w, h;
		int lineCount = 1;
		int fontHandle = GameSystem::GetInstance().GetFontHandleForGoal();

		GetDrawFormatStringSize(&w, &h, &lineCount, message.c_str());

		x = ((int)GameSystem::GetInstance().GetScreenWidth() - w) / 2;
		y = ((int)GameSystem::GetInstance().GetScreenHeight() - h) / 2;

		DrawFormatStringToHandle(x, y, GetColor(255, 0, 0), fontHandle, message.c_str());
	}
}
