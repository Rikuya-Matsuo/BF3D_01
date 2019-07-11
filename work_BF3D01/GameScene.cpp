#include "GameScene.h"
#include "GameSystem.h"
#include "Input.h"
#include "Cube.h"
#include <string>

GameScene::GameScene():
	SceneBase(10.0f, 3700.0f),
	mGoalLine(2000.0f),
	mDiamondMass(10)
{
	// アクターへのポインタはゲームシステムクラスのベクターデータが自動で受け取ってくれる（アクタークラスのコンストラクタ参照）
	mPlayer = new Player(MV1LoadModel("Data/Model/Player/Boy.pmx"));
	mPlayer->SetPosition(VGet(0, 100, 0));

	for (int i = 0; i < 10; ++i)
	{
		Cube * ground = new Cube(VGet(i * 200.0f, 0, 0), VGet((i + 1) * 200.0f, -1000.0f, -50), true, true, GetColor(0, 255, 0));
		ground->LoadTexture("Data/Image/groundTexture00.jpg");
		GameSystem::GetInstance().AddGround(ground);
	}
	
	// カメラ追従設定
	mCamera.SetFollowActor(mPlayer);

	// スカイドーム設定
	mSky.LoadModel("Data/Model/SkyDome/skydome_orca/sky_01.x");

	// ダイアモンド設置
	mDiamondManager = new DiamondManager("Data/Model/Treasure/LuckyHammer/REPLICA_KODUCHI.pmx", mDiamondMass);
}


GameScene::~GameScene()
{
	delete mDiamondManager;
}

void GameScene::Update(float deltaTime)
{
	clsDx();
	
	printfDx("ゲーム画面\n");
}
void GameScene::Draw()
{
	BaseOriginalDraw();

	if (mPlayer->GetPosition().x >= mGoalLine)
	{
		std::string message = (mPlayer->GetItemCollect() >= mDiamondMass) ? "ゴール！" : "まだアイテムが残ってるよ！";

		int x, y;
		int w, h;
		int lineCount = 1;
		GetDrawFormatStringSize(&w, &h, &lineCount, message.c_str());

		x = ((int)GameSystem::GetInstance().GetScreenWidth() - w) / 2;
		y = ((int)GameSystem::GetInstance().GetScreenHeight() - h) / 2;

		DrawFormatString(x, y, GetColor(255, 0, 0), message.c_str());
	}
}