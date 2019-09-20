#pragma once
#include "Camera.h"
#include "Sky.h"
#include "Light.h"

class Camera;

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

	Camera& GetCamera() { return *mCamera; }

protected:
	// 次のシーンへのポインタ
	SceneBase *		mNextScene;

	// カメラへのポインタ
	Camera *		mCamera;

	// 次のシーンへ移るかのフラグ
	bool			mGoNextSceneFlag;

	// 光の設定のデータ
	Light			mLight;

	// 空の設定のデータ
	Sky				mSky;
};
