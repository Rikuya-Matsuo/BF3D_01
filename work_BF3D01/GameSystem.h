#pragma once
#include "Actor.h"
#include <vector>

class GameSystem final
{
public:
	static GameSystem& GetInstance()
	{
		static GameSystem instance;
		return instance;
	}

	void SetScreen(int screenWidth, int screenHeight, bool fullScreen);
	void Run();

	void AddActor(Actor * actor);
	void RemoveActor(Actor * actor);

	int GetScreenWidth() { return mScreenWidth; }
	int GetScreenHeight() { return mScreenHeight; }

private:
	GameSystem();
	
	bool mRunFlag;

	int mScreenWidth;
	int mScreenHeight;
	bool mFullScreenFlag;

	float mNowCount;
	float mPrevCount;
	float mDeltaTime;

	std::vector<Actor*> mActor;

	void Init();
	void GetInput();
	float CulculateDeltaTime();
	void ActorUpdate();
	void ShutDown();
};
