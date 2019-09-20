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
	delete mCamera;
	mCamera = NULL;
}

void SceneBase::Draw()
{
	mSky.Draw();
}

void SceneBase::SetNextScene(SceneBase * nextScene)
{
	if (mNextScene != NULL)
	{
		delete mNextScene;
	}

	mNextScene = nextScene;
}
