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
	// ゲッター
	/////////////////////////////////////////////////////
	// 位置座標
	const VECTOR& GetPosition() const { return mPosition; }
	const VECTOR& GetVelocity() const { return mVelocity; }

	// 重力適用フラグ
	bool GetGravityFlag() { return mGravityFlag; }

	// 重力倍率
	float GetGravityRate() { return mGravityRate; }

	// 描画フラグ
	bool GetDrawFlag() { return mDrawFlag; }

	/////////////////////////////////////////////////////
	// セッター
	/////////////////////////////////////////////////////
	// 位置座標
	void SetPosition(const VECTOR & value) { mPosition = value; }

	// アクター状態
	void SetState(State value) { mState = value; }

	// 速度
	void SetVelocityX(float in_velX) { mVelocity.x = in_velX; }
	void SetVelocityY(float in_velY) { mVelocity.y = in_velY; }
	void SetVelocityZ(float in_velZ) { mVelocity.z = in_velZ; }
	void SetVelocity(const VECTOR & value) { mVelocity = value; }
	void SetVelocity(float in_velX, float in_velY, float in_velZ) { mVelocity = VGet(in_velX, in_velY, in_velZ); }

	// 重力適用フラグ
	void SetGravityFlag(bool value) { mGravityFlag = value; }

	// 重力倍率
	void SetGravityRate(float value) { mGravityRate = value; }

	// 描画フラグ
	void SetDrawFlag(bool value) { mDrawFlag = value; }

	/////////////////////////////////////////////////////
	// アッダー(Adder)
	// 元の値に足し引きしたいときに便利な関数として定義
	/////////////////////////////////////////////////////
	// 位置情報
	void AddPosition(const VECTOR & value) { mVelocity = VAdd(mVelocity, value); }
	
	// 速度
	void AddVelocityX(float in_velX) { mVelocity.x += in_velX; }
	void AddVelocityY(float in_velY) { mVelocity.y += in_velY; }
	void AddVelocityZ(float in_velZ) { mVelocity.z += in_velZ; }
	void AddVelocity(const VECTOR & value) { mVelocity = VAdd(mVelocity, value); }
	void AddVelocity(float in_velX, float in_velY, float in_velZ) { mVelocity = VAdd(mVelocity, VGet(in_velX, in_velY, in_velZ)); }

protected:
	VECTOR mPosition;
	VECTOR mVelocity;

	// 状態
	State mState;

	// 描画するかどうかのフラグ
	bool mDrawFlag;

	// 重力の影響を受けるかどうかのフラグ
	bool mGravityFlag;

	// 重力の影響を何倍にするか。
	// これによって落下速度を上げたり下げたりできる。
	float mGravityRate;
};
