#pragma once
#include "DxLib.h"

class Actor
{
public:
	enum State
	{
		Active,
		Paused,
		Dead,
	};

	Actor(State state = State::Active, bool gravityFlag = false, float gravityRate = 1.0f, bool drawFlag = true);

	virtual void Update(float deltaTime);
	virtual void Draw();

	/////////////////////////////////////////////////////
	// �Q�b�^�[
	/////////////////////////////////////////////////////
	// �ʒu���W
	const VECTOR& GetPosition() const { return mPosition; }
	const VECTOR& GetVelocity() const { return mVelocity; }

	// �d�͓K�p�t���O
	bool GetGravityFlag() { return mGravityFlag; }

	// �d�͔{��
	float GetGravityRate() { return mGravityRate; }

	// �`��t���O
	bool GetDrawFlag() { return mDrawFlag; }

	/////////////////////////////////////////////////////
	// �Z�b�^�[
	/////////////////////////////////////////////////////
	// �ʒu���W
	void SetPosition(const VECTOR & value) { mPosition = value; }

	// �A�N�^�[���
	void SetState(State value) { mState = value; }

	// ���x
	void SetVelocityX(float in_velX) { mVelocity.x = in_velX; }
	void SetVelocityY(float in_velY) { mVelocity.y = in_velY; }
	void SetVelocityZ(float in_velZ) { mVelocity.z = in_velZ; }
	void SetVelocity(const VECTOR & value) { mVelocity = value; }
	void SetVelocity(float in_velX, float in_velY, float in_velZ) { mVelocity = VGet(in_velX, in_velY, in_velZ); }

	// �d�͓K�p�t���O
	void SetGravityFlag(bool value) { mGravityFlag = value; }

	// �d�͔{��
	void SetGravityRate(float value) { mGravityRate = value; }

	// �`��t���O
	void SetDrawFlag(bool value) { mDrawFlag = value; }

	/////////////////////////////////////////////////////
	// �A�b�_�[(Adder)
	// ���̒l�ɑ��������������Ƃ��ɕ֗��Ȋ֐��Ƃ��Ē�`
	/////////////////////////////////////////////////////
	// �ʒu���
	void AddPosition(const VECTOR & value) { mVelocity = VAdd(mVelocity, value); }
	
	// ���x
	void AddVelocityX(float in_velX) { mVelocity.x += in_velX; }
	void AddVelocityY(float in_velY) { mVelocity.y += in_velY; }
	void AddVelocityZ(float in_velZ) { mVelocity.z += in_velZ; }
	void AddVelocity(const VECTOR & value) { mVelocity = VAdd(mVelocity, value); }
	void AddVelocity(float in_velX, float in_velY, float in_velZ) { mVelocity = VAdd(mVelocity, VGet(in_velX, in_velY, in_velZ)); }

protected:
	VECTOR mPosition;
	VECTOR mVelocity;

	// ���
	State mState;

	// �`�悷�邩�ǂ����̃t���O
	bool mDrawFlag;

	// �d�͂̉e�����󂯂邩�ǂ����̃t���O
	bool mGravityFlag;

	// �d�͂̉e�������{�ɂ��邩�B
	// ����ɂ���ė������x���グ���艺������ł���B
	float mGravityRate;
};
