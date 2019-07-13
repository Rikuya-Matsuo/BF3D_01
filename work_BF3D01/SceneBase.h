#pragma once
#include "Camera.h"
#include "Sky.h"
#include "Light.h"

class SceneBase
{
public:
	SceneBase(float camera_near, float camera_far);
	virtual ~SceneBase();

	virtual void Update(float deltaTime) = 0;
	virtual void Draw();

	void SetNextScene(SceneBase * nextScene);
	SceneBase* GetNextScenePointer() const { return mNextScene; }

	bool GetGoNextSceneFlag() const { return mGoNextSceneFlag; }

	Camera& GetCamera() { return mCamera; }

protected:
	bool mGoNextSceneFlag;

	SceneBase * mNextScene;

	Camera mCamera;

	Light mLight;

	Sky mSky;

	void BaseOriginalDraw();
};
