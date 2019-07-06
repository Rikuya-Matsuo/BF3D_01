#include "GameScene.h"
#include "Input.h"
#include "Player.h"

GameScene::GameScene()
{
	// アクターへのポインタはゲームシステムクラスのベクターデータが自動で受け取ってくれる
	Player * player = new Player(MV1LoadModel("Data/Model/Player/Boy.pmx"));

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
