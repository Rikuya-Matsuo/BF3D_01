#include "TitleScene.h"

TitleScene::TitleScene():
	SceneBase(10.0f, 3700.0f)
{
	mCamera->SetFollowFlag(false);

	GTitanic::LoadGraph(mLogo, "Data/Image/logo.png");
	GTitanic::SetTransFlag(mLogo, TRUE);
	GTitanic::ExtendGraph(mLogo, 0.50f);
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
	/*
	int x, y;
	int w, h;
	int lineCount;
	int fontHandle = GameSystem::GetInstance().GetFontHandleForGoal();

	const char * title = "ミスターバルーン";
	GetDrawStringSizeToHandle(&w, &h, &lineCount, title, (int)strlen(title), fontHandle);

	x = (GameSystem::GetInstance().GetScreenWidth() - w) / 2;
	y = (GameSystem::GetInstance().GetScreenHeight() - h) / 2;

	DrawStringToHandle(x, y, title, GetColor(255, 255, 255), fontHandle, GetColor(128, 0, 128));
	*/

	mLogo.position.x = (GameSystem::GetInstance().GetScreenWidth() - mLogo.w) / 2.0f;
	mLogo.position.y = (GameSystem::GetInstance().GetScreenHeight() - mLogo.h) / 2.0f;

	GTitanic::DrawGraph(mLogo);
}
