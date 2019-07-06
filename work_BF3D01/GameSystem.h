﻿#pragma once
#include "Actor.h"
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

	void Init();
	void SetScreenInfo(int screenWidth, int screenHeight, bool fullScreen);
	void Run();

	void AddActor(Actor * actor);
	void RemoveActor(Actor * actor);

	int GetScreenWidth()const { return mScreenWidth; }
	int GetScreenHeight()const { return mScreenHeight; }
	
	float GetDeltaTime()const { return mDeltaTime; }

	void SetNowScene(SceneBase * scene) { mNowScene = scene; }

private:
	GameSystem();
	
	bool mRunFlag;

	int mScreenWidth;
	int mScreenHeight;
	bool mFullScreenFlag;

	int mNowCount;
	int mPrevCount;
	float mDeltaTime;

	SceneBase * mNowScene;

	std::vector<Actor*> mActors;

	float CulculateDeltaTime();
	void UpdateActors();
	void DrawActors();
	void ShutDown();
};
