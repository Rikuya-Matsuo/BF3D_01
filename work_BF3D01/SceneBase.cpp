#include "SceneBase.h"
#include "GameSystem.h"



SceneBase::SceneBase(float camera_near, float camera_far):
	mLight(),
	mGoNextSceneFlag(false),
	mNextScene(NULL)
{
	mCamera = new Camera(camera_near, camera_far);
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
	if (mNextScene != NULL)
	{
		delete mNextScene;
	}

	mNextScene = nextScene;
}

void SceneBase::BaseOriginalDraw()
{
	mSky.Draw();
}
