#pragma once
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

	void SetScreenInfo(int screenWidth, int screenHeight, bool fullScreen);
	void Run();

	void AddActor(Actor * actor);
	void RemoveActor(Actor * actor);

	int GetScreenWidth() { return mScreenWidth; }
	int GetScreenHeight() { return mScreenHeight; }

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

	void Init();
	float CulculateDeltaTime();
	void UpdateActors();
	void DrawActors();
	void ShutDown();
};
