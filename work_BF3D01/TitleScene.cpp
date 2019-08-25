#include "TitleScene.h"

TitleScene::TitleScene():
	SceneBase(10.0f, 3700.0f)
{
	mCamera->SetFollowFlag(false);
}

TitleScene::~TitleScene()
{
}

void TitleScene::Update(float deltaTime)
{
	if (Input::GetInstance().GetKeyDown(KEY_INPUT_RETURN))
	{
		SetNextScene(new GameScene);

		mGoNextSceneFlag = true;
	}
}

void TitleScene::Draw()
{
	int x, y;
	int w, h;
	int lineCount;
	int fontHandle = GameSystem::GetInstance().GetFontHandleForGoal();

	const char * title = "ミスターバルーン";
	GetDrawStringSizeToHandle(&w, &h, &lineCount, title, strlen(title), fontHandle);

	x = (GameSystem::GetInstance().GetScreenWidth() - w) / 2;
	y = (GameSystem::GetInstance().GetScreenHeight() - h) / 2;

	DrawStringToHandle(x, y, title, GetColor(255, 255, 255), fontHandle, GetColor(128, 0, 128));
}
