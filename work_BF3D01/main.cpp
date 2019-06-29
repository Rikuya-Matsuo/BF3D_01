#include"DxLib.h"
#include "GameSystem.h"
#include "GameScene.h"

int WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
{
	GameSystem::GetInstance().SetScreen(1920, 1080, false);
	GameSystem::GetInstance().SetNowScene(new GameScene);

	GameSystem::GetInstance().Run();

	return 0;
}
