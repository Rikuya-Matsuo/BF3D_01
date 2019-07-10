#include "GameSystem.h"
#include "Input.h"

GameSystem::GameSystem():
	mRunFlag(true),
	mNowScene(nullptr)
{
}

void GameSystem::Run()
{
	// 最初のフレームでのmDeltaTimeを小さくするため、mPrevCountはループ開始直前に初期化
	mPrevCount = GetNowCount();

	while (mRunFlag)
	{
		// 入力情報の更新
		Input::GetInstance().Update();

		// フレーム間秒数の算出
		CulculateDeltaTime();

		// シーン更新
		mNowScene->Update(mDeltaTime);

		// アクター更新
		UpdateActors();

		// 当たり判定
		CheckColliders();

		// カメラ更新
		mNowScene->GetCamera().Update();

		// スクリーン初期化
		ClearDrawScreen();

		// シーン描画
		mNowScene->Draw();

		// アクター描画
		DrawActors();

		// 地面・壁の描画
		DrawGround();

		// 裏画面の情報を表に描画
		ScreenFlip();

		// シーンの切り替え
		if (mNowScene->GetGoNextSceneFlag())
		{
			SceneBase * nextScene = mNowScene->GetNextScenePointer();

			delete mNowScene;

			if (nextScene != NULL)
			{
				SetNowScene(nextScene);
			}
			else
			{
				mRunFlag = false;
			}
		}

		// ゲーム終了判定
		if (ProcessMessage() != 0 || Input::GetInstance().GetKeyDown(KEY_INPUT_ESCAPE))
		{
			break;
		}
	}

	// 後片付け
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
	// 現在のカウントを取得
	mNowCount = GetNowCount();

	// 前フレームからの経過時間を算出
	// mDeltaTimeにおいては単位を「ミリ秒」から「秒」に変換
	mDeltaTime = (float)(mNowCount - mPrevCount);
	mDeltaTime /= 1000.0f;

	// このフレームにおけるカウントの記録
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

void GameSystem::CheckColliders()
{
	for (unsigned int i = 0; i < mColliders.size() - 1; ++i)
	{
		if (mColliders[i]->GetOwnerPointer()->GetState() == Actor::State::Active)
		for (unsigned int j = i + 1; j < mColliders.size(); ++j)
		{
			if (CheckCollision_Ver2D(*mColliders[i], *mColliders[j]))
			{
				mColliders[i]->GetOwnerPointer()->OnCollisionHit(*mColliders[j]);
				mColliders[j]->GetOwnerPointer()->OnCollisionHit(*mColliders[i]);
			}
		}
	}
}

void GameSystem::DrawActors()
{
	for (auto actor : mActors)
	{
		actor->Draw();
	}
}

void GameSystem::DrawGround()
{
	for (auto ground : mGround)
	{
		ground->Draw();
	}
}

void GameSystem::ShutDown()
{
	while (!mActors.empty())
	{
		delete mActors.back();
	}

	while (!mGround.empty())
	{
		mGround.pop_back();
	}
	mGround.shrink_to_fit();

	DxLib_End();
}

void GameSystem::SetScreenInfo(int screenWidth, int screenHeight, bool fullScreen)
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

void GameSystem::AddGround(Cube * cube)
{
	mGround.emplace_back(cube);
}

void GameSystem::AddCollider(BoxCollider * collider)
{
	mColliders.emplace_back(collider);
}
