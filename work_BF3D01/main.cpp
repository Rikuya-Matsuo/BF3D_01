#include"DxLib.h"
#include "GameSystem.h"

int WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
{
	GameSystem::GetInstance().SetScreen(1920, 1080, false);

	GameSystem::GetInstance().Run();

	return 0;
}
