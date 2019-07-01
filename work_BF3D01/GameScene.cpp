#include "GameScene.h"
#include "Input.h"


GameScene::GameScene()
{
}


GameScene::~GameScene()
{
	
}

void GameScene::Update(float deltaTime)
{
	clsDx();
	
	printfDx("ゲーム画面\n");
}

void GameScene::Draw()
{
	DrawBox(100, 100, 300, 300, GetColor(255, 0, 0), TRUE);
}
