#include "SceneBase.h"
#include "GameSystem.h"



SceneBase::SceneBase():
	mGoNextSceneFlag(false),
	mNextScene(NULL)
{
}


SceneBase::~SceneBase()
{
}

void SceneBase::Draw()
{
}

void SceneBase::SetNextScene(SceneBase * nextScene)
{
	mNextScene = nextScene;
}
