#pragma once
#include "DxLib.h"
#include "Actor.h"

class Camera
{
public:
	Camera();
	~Camera();

	void Update();

	void SetFollowActor(const Actor& actor) { mFollowActor = (Actor *)(&actor); }
	void SetPosition(const VECTOR& pos) { mPosition = pos; }
	void SetNearFar(float in_near, float in_far);
	void SetFollowFlag(bool value) { mFollowFlag = value; }

private:
	// ついていくアクターへのポインタ
	Actor * mFollowActor;

	// カメラ位置
	VECTOR mPosition;

	// 描画射程
	float mNear;
	float mFar;

	// アクターの追従をするかどうかのフラグ
	// 基本的にはtrueだがイベント時にはfalseにしてカメラが自由に動けるようにする
	bool mFollowFlag;
};

