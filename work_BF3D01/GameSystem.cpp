#include "GameSystem.h"
#include "Input.h"

void GameSystem::BreakPoint()
{
#ifdef _DEBUG_BF3D
	if (Input::GetInstance().GetKeyDown(KEY_INPUT_SPACE))
	{
		// ここにブレークポイント
		WaitTimer(0);
	}
#endif
}

GameSystem::GameSystem():
	mRunFlag(true),
	mNowScene(NULL),
	mPauseFlag(false)
{
	mActors.reserve(60);
	mColliders.reserve(60);
}

GameSystem::~GameSystem()
{
	DeleteFontToHandle(mFontHandleForScore);
	DeleteFontToHandle(mFontHandleForGoal);
}

void GameSystem::Run()
{
	// 最初のフレームでのmDeltaTimeを小さくするため、mPrevCountはループ開始直前に初期化
	mPrevCount = GetNowCount();

	while (mRunFlag)
	{
#ifdef _DEBUG_BF3D
		// ログのクリア
		clsDx();

		if (mPauseFlag)
		{
			printfDx("ポーズ中\n");
		}
#endif // _DEBUG_BF3D

		// ポーズ要請フラグの更新
		mPauseRequestFlag = false;

		// 入力情報の更新
		Input::GetInstance().Update();

		// フレーム間秒数の算出
		CulculateDeltaTime();

#ifdef _DEBUG_BF3D
		// ポーズの判定および実行
		if (Input::GetInstance().GetKeyDown(KEY_INPUT_TAB) || (!mPauseFlag && GetWindowActiveFlag() == FALSE))
		{
			TogglePauseState();
		}
#endif

		// シーン更新
		mNowScene->Update(mDeltaTime);

		// アクター更新
		UpdateActors();

		// コリジョン更新
		UpdateColliders();

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
		
		// 裏画面の情報を表に描画
		ScreenFlip();

		// ポーズ要請への応答
		RespondPauseRequest();

		// シーンの切り替え
		if (mNowScene->GetGoNextSceneFlag())
		{
			SceneBase * nextScene = mNowScene->GetNextScenePointer();

			DeleteNowSceneActors();
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

	SetAlwaysRunFlag(TRUE);

	mFontHandleForScore = CreateFontToHandle("System 標準", 32, 3, DX_FONTTYPE_EDGE);

	mFontHandleForGoal = CreateFontToHandle("System 標準", 72, 9, DX_FONTTYPE_EDGE);

	SetFontSize(GetFontSizeToHandle(mFontHandleForGoal));
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

void GameSystem::TogglePauseState()
{
	// ポーズフラグの切り替え
	mPauseFlag = !mPauseFlag;

	// アクター状態切り替え
	// ポーズ状態になったとき
	if (mPauseFlag)
	{
		// アクター状態をポーズにセット
		for (auto actor : mActors)
		{
			actor->RecordState();
			actor->SetState(Actor::Paused);
		}
	}
	// ポーズ解除状態になったとき
	else
	{
		// アクター状態をアクティブにセット
		for (auto actor : mActors)
		{
			actor->SetState(actor->GetStateAfterEndPause());
		}
	}
}

void GameSystem::RespondPauseRequest()
{
	if (mPauseRequestFlag)
	{
		if (!mPauseFlag)
		{
			TogglePauseState();
		}
		else
		{
			for (auto actor : mActors)
			{
				actor->RecordState();
				actor->SetState(Actor::Paused);
			}
		}
	}
}

void GameSystem::UpdateActors()
{
	for (auto actor : mActors)
	{
		actor->Update(mDeltaTime);
	}
}

void GameSystem::UpdateColliders()
{
	for (auto collider : mColliders)
	{
		collider->Update();
	}
}

void GameSystem::CheckColliders()
{
	// なぜかここでだけfor文の動きが違うため、登録コライダーがない場合はここで関数を抜ける
	if (mColliders.empty())
	{
		return;
	}

	for (unsigned int i = 0; i < (mColliders.size() - 1); ++i)
	{
		if (mColliders[i]->GetOwnerPointer()->GetState() != Actor::State::Active)
		{
			continue;
		}

		for (unsigned int j = i + 1; j < mColliders.size(); ++j)
		{
			if (mColliders[j]->GetOwnerPointer()->GetState() != Actor::State::Active)
			{
				continue;
			}

			if (CheckCollision_2DVersion(*mColliders[i], *mColliders[j]))
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

void GameSystem::DeleteNowSceneActors()
{
	unsigned int i = 0;

	while (i < mActors.size())
	{
		if (mActors[i]->GetScenePointer() == mNowScene)
		{
			delete mActors[i];
		}
		else
		{
			++i;
		}
	}
}

void GameSystem::ShutDown()
{
	while (!mActors.empty())
	{
		delete mActors.back();
	}
	mActors.shrink_to_fit();

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
	if (target == mActors.end())
	{
		return;
	}

	mActors.erase(target);
}

void GameSystem::AddCollider(BoxCollider * collider)
{
	mColliders.emplace_back(collider);
}

void GameSystem::RemoveCollider(BoxCollider * collider)
{
	auto target = std::find(mColliders.begin(), mColliders.end(), collider);
	if (target == mColliders.end())
	{
		return;
	}

	mColliders.erase(target);
}
