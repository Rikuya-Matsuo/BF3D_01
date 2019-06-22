#pragma once
#include "Actor.h"
#include <vector>

class GameSystem final
{
public:
	GameSystem& GetInstance()
	{
		static GameSystem instance;
		return instance;
	}

	void Run();

private:
	GameSystem() {}
	
	std::vector<class Actor> mActor;
};
