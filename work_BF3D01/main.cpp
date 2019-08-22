#include"DxLib.h"
#include "GameSystem.h"
#include "TitleScene.h"

int WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
{
	GameSystem::GetInstance().SetScreenInfo(1920, 1080, false);
	GameSystem::GetInstance().Init();
	GameSystem::GetInstance().SetNowScene(new TitleScene);

	GameSystem::GetInstance().Run();
	
	return 0;
}
