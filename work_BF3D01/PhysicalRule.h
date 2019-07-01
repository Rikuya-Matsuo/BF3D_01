#include "Actor.h"

// ���ケ�̃Q�[���V�X�e���V���O���g�����g���܂킷���Ƃ��l���āA
// �u�v���W�F�N�g���ɕ����@���N���X���܂ށv���Ƃ������}�N�����`�B
// ���ł�pragma once�������Â����@�ŏ����Ă݂��B�����b�g�͂Ȃ����f�����b�g���Ȃ��B�����B
#ifndef _PHYSICAL_RULE
#define _PHYSICAL_RULE 1

class PhysicalRule final
{
public:
	static PhysicalRule& GetInstance()
	{
		static PhysicalRule instance;
		return instance;
	}

	~PhysicalRule();

	//�A�N�^�[�𗎉�������֐�
	void Fall (Actor& actor, float gravityRate = 1.0f) const;

	//�d�͉����x�Z�b�^�[
	void SetGravity(float value) { mGravity = value; }

	//�d�͉����x�Q�b�^�[
	//�Z�b�^�[������Ȃ�Q�b�^�[���������ق���������˂��Ă��ƂŁB
	float GetGravity() { return mGravity; }

private:
	PhysicalRule();

	float mGravity;
};

#endif
