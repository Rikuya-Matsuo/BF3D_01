#pragma once
#include "DxLib.h"
#include "Actor.h"

class Camera
{
public:
	Camera(float in_near, float in_far);
	~Camera();

	void Update();

	void SetFollowActor(const Actor& actor) { mFollowActor = (Actor *)(&actor); }
	void SetPosition(const VECTOR& pos) { mPosition = pos; }
	void SetNearFar(float in_near, float in_far);
	void SetFollowFlag(bool value) { mFollowFlag = value; }

private:
	// ���Ă����A�N�^�[�ւ̃|�C���^
	Actor * mFollowActor;

	// �J�����ʒu
	VECTOR mPosition;

	// �`��˒�
	float mNear;
	float mFar;

	// �A�N�^�[�̒Ǐ]�����邩�ǂ����̃t���O
	// ��{�I�ɂ�true�����C�x���g���ɂ�false�ɂ��ăJ���������R�ɓ�����悤�ɂ���
	bool mFollowFlag;
};

