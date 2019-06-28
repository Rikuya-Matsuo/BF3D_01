#include "GameSystem.h"
#include "Input.h"

GameSystem::GameSystem():
	mRunFlag(true)
{
}

void GameSystem::Init()
{
	if (DxLib_Init() == -1)
	{
		mRunFlag = false;
		return;
	}

	ChangeWindowMode(mFullScreenFlag ? FALSE : TRUE);
	SetGraphMode(mScreenWidth, mScreenHeight, 16);

	SetDrawScreen(DX_SCREEN_BACK);
}

void GameSystem::GetInput()
{
	Input::GetInstance().Update();
}

float GameSystem::CulculateDeltaTime()
{
	// 現在のカウントを取得
	mNowCount = GetNowCount();

	// 前フレームからの経過時間を算出
	mDeltaTime = mNowCount - mPrevCount;

	// このフレームにおけるカウントの記録
	mPrevCount = mNowCount;

	return mDeltaTime;
}

void GameSystem::ActorUpdate()
{
	for (auto actor : mActor)
	{
		actor->Update(mDeltaTime);
	}
}

void GameSystem::ShutDown()
{
	while (!mActor.empty())
	{
		delete mActor.back();
	}

	DxLib_End();
}

void GameSystem::SetScreen(int screenWidth, int screenHeight, bool fullScreen)
{
	mScreenWidth = screenWidth;
	mScreenHeight = screenHeight;
	mFullScreenFlag = fullScreen;
}

void GameSystem::Run()
{
	// 最初のフレームでのmDeltaTimeを小さくするため、mPrevCountはループ開始直前に初期化
	mPrevCount = GetNowCount();

	while (mRunFlag)
	{
		GetInput();

		CulculateDeltaTime();

		ActorUpdate();

		if (ProcessMessage() != 0 || Input::GetInstance().GetKeyDown(KEY_INPUT_ESCAPE))
		{
			break;
		}
	}

	ShutDown();
}

void GameSystem::AddActor(Actor * actor)
{
	mActor.emplace_back(actor);
}

void GameSystem::RemoveActor(Actor * actor)
{
	auto target = std::find(mActor.begin(), mActor.end(), actor);

	mActor.erase(target);
}
