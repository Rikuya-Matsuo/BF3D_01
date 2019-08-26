#pragma once
#define _DEBUG_BF3D

#include "Actor.h"
#include "Cube.h"
#include "Ground.h"
#include "SceneBase.h"
#include <vector>

class GameSystem final
{
public:
	static GameSystem& GetInstance()
	{
		static GameSystem instance;
		return instance;
	}

	~GameSystem();

	void Init();
	void SetScreenInfo(int screenWidth, int screenHeight, bool fullScreen);
	void Run();

	void AddActor(Actor * actor);
	void RemoveActor(Actor * actor);

	void AddCollider(BoxCollider * collider);
	void RemoveCollider(BoxCollider * collider);

	int GetScreenWidth()const { return mScreenWidth; }
	int GetScreenHeight()const { return mScreenHeight; }
	
	float GetDeltaTime()const { return mDeltaTime; }

	bool GetPauseFlag()const { return mPauseFlag; }

	void RequestPause() { mPauseRequestFlag = true; }

	void SetNowScene(SceneBase * scene) { mNowScene = scene; }

	void BreakPoint();

	int GetFontHandleForScore() { return mFontHandleForScore; }

	int GetFontHandleForGoal() { return mFontHandleForGoal; }

	int GetUIScreenHandle() { return mUIScreenHandle; }

private:
	GameSystem();
	
	bool mRunFlag;

	int mScreenWidth;
	int mScreenHeight;
	bool mFullScreenFlag;

	int mNowCount;
	int mPrevCount;
	float mDeltaTime;

	bool mPauseFlag;

	bool mPauseRequestFlag;

	int mFontHandleForScore;

	int mFontHandleForGoal;

	SceneBase * mNowScene;

	std::vector<Actor*> mActors;

	std::vector<BoxCollider*> mColliders;

	int mUIScreenHandle;

	float CulculateDeltaTime();
	void TogglePauseState();
	void UpdateActors();
	void UpdateColliders();
	void CheckColliders();
	void DrawActors();
	void RespondPauseRequest();
	void DeleteNowSceneActors();
	void ShutDown();
};
