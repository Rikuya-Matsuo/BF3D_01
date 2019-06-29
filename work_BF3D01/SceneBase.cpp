#include "SceneBase.h"
#include "GameSystem.h"



SceneBase::SceneBase():
	mGoNextSceneFlag(false)
{
}


SceneBase::~SceneBase()
{
}

void SceneBase::Draw()
{
}

void SceneBase::GoNextScene(SceneBase * nextScene)
{
	// 次シーン移行フラグが真でなければ発動しない
	if (mGoNextSceneFlag)
	{
		// シーン切り替え
		GameSystem::GetInstance().SetNowScene(nextScene);

		// このシーンを削除（いわゆるクラスの自殺。物議を醸す一文？）
		delete this;
	}
}
