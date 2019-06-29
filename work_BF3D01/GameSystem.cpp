#include "GameSystem.h"
#include "Input.h"

GameSystem::GameSystem():
	mRunFlag(true),
	mNowScene(NULL)
{
}

void GameSystem::Run()
{
	// �ŏ��̃t���[���ł�mDeltaTime�����������邽�߁AmPrevCount�̓��[�v�J�n���O�ɏ�����
	mPrevCount = GetNowCount();

	while (mRunFlag)
	{
		// ���͏��̍X�V
		Input::GetInstance().Update();

		// �t���[���ԕb���̎Z�o
		CulculateDeltaTime();

		// �V�[���X�V
		mNowScene->Update(mDeltaTime);

		// �A�N�^�[�X�V
		UpdateActors();

		// �V�[���`��
		mNowScene->Draw();

		// �A�N�^�[�`��
		UpdateActors();

		// ����ʂ̏���\�ɕ`��
		ScreenFlip();

		// �Q�[���I������
		if (ProcessMessage() != 0 || Input::GetInstance().GetKeyDown(KEY_INPUT_ESCAPE))
		{
			break;
		}
	}

	// ��Еt��
	ShutDown();
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

float GameSystem::CulculateDeltaTime()
{
	// ���݂̃J�E���g���擾
	mNowCount = GetNowCount();

	// �O�t���[������̌o�ߎ��Ԃ��Z�o
	// mDeltaTime�ɂ����Ă͒P�ʂ��u�~���b�v����u�b�v�ɕϊ�
	mDeltaTime = (float)(mNowCount - mPrevCount);
	mDeltaTime /= 1000.0f;

	// ���̃t���[���ɂ�����J�E���g�̋L�^
	mPrevCount = mNowCount;

	return mDeltaTime;
}

void GameSystem::UpdateActors()
{
	for (auto actor : mActors)
	{
		actor->Update(mDeltaTime);
	}
}

void GameSystem::DrawActors()
{
	for (auto actor : mActors)
	{
		actor->Draw();
	}
}

void GameSystem::ShutDown()
{
	while (!mActors.empty())
	{
		delete mActors.back();
	}

	DxLib_End();
}

void GameSystem::SetScreen(int screenWidth, int screenHeight, bool fullScreen)
{
	mScreenWidth = screenWidth;
	mScreenHeight = screenHeight;
	mFullScreenFlag = fullScreen;
}

void GameSystem::AddActor(Actor * actor)
{
	mActors.emplace_back(actor);
}

void GameSystem::RemoveActor(Actor * actor)
{
	auto target = std::find(mActors.begin(), mActors.end(), actor);

	mActors.erase(target);
}
