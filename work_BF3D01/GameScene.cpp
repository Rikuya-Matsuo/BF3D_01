#include "GameScene.h"



GameScene::GameScene()
{
}


GameScene::~GameScene()
{
}

void GameScene::Update(float deltaTime)
{
	clsDx();

	printfDx("�Q�[�����");
}

void GameScene::Draw()
{
	DrawBox(100, 100, 300, 300, 0xff000000, TRUE);
}
