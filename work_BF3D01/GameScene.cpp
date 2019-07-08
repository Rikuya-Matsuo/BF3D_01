#include "GameScene.h"
#include "GameSystem.h"
#include "Input.h"
#include "Player.h"
#include "Cube.h"

GameScene::GameScene():
	SceneBase(10.0f, 3700.0f)
{
	// アクターへのポインタはゲームシステムクラスのベクターデータが自動で受け取ってくれる（アクタークラスのコンストラクタ参照）
	Player * player = new Player(MV1LoadModel("Data/Model/Player/Boy.pmx"));
	player->SetPosition(VGet(0, 100, 0));

	for (int i = 0; i < 10; ++i)
	{
		Cube * ground = new Cube(VGet(i * 200.0f, 0, 0), VGet((i + 1) * 200.0f, -1000.0f, -50), true, true, GetColor(0, 255, 0));
		GameSystem::GetInstance().AddGround(ground);
	}
	
	// カメラ追従設定
	mCamera.SetFollowActor(player);

	// スカイドーム設定
	mSky.LoadModel("Data/Model/SkyDome/skydome_orca/sky_01.x");
}


GameScene::~GameScene()
{
}

void GameScene::Update(float deltaTime)
{
	clsDx();
	
	printfDx("ゲーム画面\n");
}
/*
void GameScene::Draw()
{
	
}
*/