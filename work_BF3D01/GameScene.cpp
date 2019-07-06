#include "GameScene.h"
#include "GameSystem.h"
#include "Input.h"
#include "Player.h"
#include "Cube.h"

GameScene::GameScene()
{
	// アクターへのポインタはゲームシステムクラスのベクターデータが自動で受け取ってくれる
	Player * player = new Player(MV1LoadModel("Data/Model/Player/Boy.pmx"));

	for (int i = 0; i < 10; ++i)
	{
		Cube * ground = new Cube(VGet(i * 200.0f, 0, 0), VGet((i + 1) * 200.0f, 1000.0f, -50), true, true, GetColor(0, 255, 0));
		GameSystem::GetInstance().AddGround(ground);
	}
	
	mCamera = new Camera(10.0f, 1500.0f);
	mCamera->SetFollowActor(*player);
}


GameScene::~GameScene()
{
	delete mCamera;
}

void GameScene::Update(float deltaTime)
{
	clsDx();
	
	printfDx("ゲーム画面\n");
}

void GameScene::Draw()
{
	
}
