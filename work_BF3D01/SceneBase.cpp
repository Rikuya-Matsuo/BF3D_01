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
	// ���V�[���ڍs�t���O���^�łȂ���Δ������Ȃ�
	if (mGoNextSceneFlag)
	{
		// �V�[���؂�ւ�
		GameSystem::GetInstance().SetNowScene(nextScene);

		// ���̃V�[�����폜�i������N���X�̎��E�B���c�������ꕶ�H�j
		delete this;
	}
}
