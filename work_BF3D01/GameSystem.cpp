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
	// ���݂̃J�E���g���擾
	mNowCount = GetNowCount();

	// �O�t���[������̌o�ߎ��Ԃ��Z�o
	mDeltaTime = mNowCount - mPrevCount;

	// ���̃t���[���ɂ�����J�E���g�̋L�^
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
	// �ŏ��̃t���[���ł�mDeltaTime�����������邽�߁AmPrevCount�̓��[�v�J�n���O�ɏ�����
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
