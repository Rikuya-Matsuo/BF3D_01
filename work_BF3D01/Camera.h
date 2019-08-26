#pragma once
#include "DxLib.h"
#include "Actor.h"

class Actor;
class SceneBase;

class Camera
{
public:
	Camera(float in_near, float in_far);
	~Camera();

	void Init();
	void Update();

	void SetFollowActor(const Actor* actor) { mFollowActor = (Actor *)actor; }
	void SetPosition(const VECTOR& pos) { mPosition = pos; }
	void SetNearFar(float in_near, float in_far);
	void SetFollowFlag(bool value) { mFollowFlag = value; }

	const VECTOR& GetPosition() const { return mPosition; }

private:
	// ついていくアクターへのポインタ
	Actor * mFollowActor;

	// 注視点
	VECTOR mTarget;

	// カメラ位置
	VECTOR mPosition;

	// 描画射程
	float mNear;
	float mFar;

	// アクターの追従をするかどうかのフラグ
	// 基本的にはtrueだがイベント時にはfalseにしてカメラが自由に動けるようにする
	bool mFollowFlag;
};

