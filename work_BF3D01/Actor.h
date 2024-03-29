﻿#pragma once
#include "DxLib.h"
#include "SceneBase.h"
#include "BoxCollider.h"

class BoxCollider;
class SceneBase;

class Actor
{
public:
	enum State
	{
		Active,
		Paused,
		Dead,
	};

	Actor(int modelHandle, State state = State::Active, bool gravityFlag = false, float gravityRate = 1.0f, bool drawFlag = true);
	virtual ~Actor();

	virtual void Update(float deltaTime);
	virtual void Draw();

	virtual void OnCollisionHit(const BoxCollider & opponentCollision);

	void RecordState() { mStateAfterEndPause = mState; }

	/////////////////////////////////////////////////////
	// ゲッター
	/////////////////////////////////////////////////////
	// 位置座標
	const VECTOR&			GetPosition() const { return mPosition; }
	const VECTOR&			GetVelocity() const { return mVelocity; }

	// アクター状態
	State					GetState() const { return mState; }

	// ポーズ解除後アクター状態
	State					GetStateAfterEndPause() { return mStateAfterEndPause; }

	// 重力適用フラグ
	bool					GetGravityFlag()const { return mGravityFlag; }

	// 重力倍率
	float					GetGravityRate()const { return mGravityRate; }

	// 描画フラグ
	bool					GetDrawFlag()const { return mDrawFlag; }

	// 移動スピード
	float					GetSpeed()const { return mSpeed; }

	// 落下速度上限値
	float					GetFallSpeedLimit()const { return mFallSpeedLimit; }

	// コライダーのポインタ
	const BoxCollider&		GetCollider()const { return *mCollider; }

	// 所属シーンのポインタ
	SceneBase*				GetScenePointer()const { return mScenePointer; }

	/////////////////////////////////////////////////////
	// セッター
	/////////////////////////////////////////////////////
	// 位置座標
	void			SetPosition(const VECTOR & value) { mPosition = value; }

	// アクター状態
	void			SetState(State value) { mState = value; }

	// 速度
	void			SetVelocityX(float in_velX) { mVelocity.x = in_velX; }
	void			SetVelocityY(float in_velY) { mVelocity.y = in_velY; }
	void			SetVelocityZ(float in_velZ) { mVelocity.z = in_velZ; }
	void			SetVelocity(const VECTOR & value) { mVelocity = value; }
	void			SetVelocity(float in_velX, float in_velY, float in_velZ) { mVelocity = VGet(in_velX, in_velY, in_velZ); }

	// 重力適用フラグ
	void			SetGravityFlag(bool value) { mGravityFlag = value; }

	// 重力倍率
	void			SetGravityRate(float value) { mGravityRate = value; }

	// 描画フラグ
	void			SetDrawFlag(bool value) { mDrawFlag = value; }

	// 移動スピード
	void			SetSpeed(float value) { mSpeed = value; }

	// モデル
	void			SetModelHandle(int handle) { mModelHandle = handle; }

	// 所属シーンポインタ
	// 大砲マネージャークラスのために仮想関数として定義
	virtual void	SetScenePointer(SceneBase* scene);

	/////////////////////////////////////////////////////
	// アッダー(Adder)（造語）
	// 元の値に足し引きしたいときに便利な関数として定義
	/////////////////////////////////////////////////////
	// 位置情報
	void	AddPosition(const VECTOR & value) { mVelocity = VAdd(mVelocity, value); }
	
	// 速度
	void	AddVelocityX(float in_velX) { mVelocity.x += in_velX; }
	void	AddVelocityY(float in_velY) { mVelocity.y += in_velY; }
	void	AddVelocityZ(float in_velZ) { mVelocity.z += in_velZ; }
	void	AddVelocity(const VECTOR & value) { mVelocity = VAdd(mVelocity, value); }
	void	AddVelocity(float in_velX, float in_velY, float in_velZ) { mVelocity = VAdd(mVelocity, VGet(in_velX, in_velY, in_velZ)); }

	// 移動スピード
	void	AddSpeed(float value) { mSpeed += value; }

protected:
	// 所属するシーン
	SceneBase *		mScenePointer;

	// コライダー
	// 相互に相手の情報をメンバ変数に持つので、ポインタで持っておく
	BoxCollider *	mCollider;

	// 位置座標
	VECTOR			mPosition;

	// このフレームで動く速度ベクトル
	VECTOR			mVelocity;

	// モデルないしは画像ハンドル
	int				mModelHandle;

	// 状態
	State			mState;

	// ポーズ解除後にどのアクター状態に戻すか
	State			mStateAfterEndPause;

	// 描画するかどうかのフラグ
	bool			mDrawFlag;

	// 重力の影響を受けるかどうかのフラグ
	bool			mGravityFlag;

	// 重力の影響を何倍にするか。
	// これによって落下速度を上げたり下げたりできる。
	float			mGravityRate;

	// 落下速度の上限
	float			mFallSpeedLimit;

	// 移動する速さ
	// 単位は「ドット／秒」
	float			mSpeed;
};
