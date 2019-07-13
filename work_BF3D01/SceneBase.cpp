#include "SceneBase.h"
#include "GameSystem.h"



SceneBase::SceneBase(float camera_near, float camera_far):
	mCamera(camera_near, camera_far),
	mLight(),
	mGoNextSceneFlag(false),
	mNextScene(NULL)
{
}


SceneBase::~SceneBase()
{
}

void SceneBase::Draw()
{
	BaseOriginalDraw();
}

void SceneBase::SetNextScene(SceneBase * nextScene)
{
	mNextScene = nextScene;
}

void SceneBase::BaseOriginalDraw()
{
	mSky.Draw();
}
