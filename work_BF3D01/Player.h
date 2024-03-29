﻿#pragma once
#include "Actor.h"
#include "Balloon.h"
#include "Common.h"
#include <unordered_map>

class Balloon;

class Player : public Actor
{
public:
	Player(int modelHandle, State state = State::Active, bool gravityFlag = true, float gravityRate = 0.5f, bool drawFlag = true);
	~Player();

	void Update(float deltaTime) override;
	void OnCollisionHit(const BoxCollider& opponentCollision) override;
	void Draw() override;
	void SetScenePointer(SceneBase * scene) override;

	int GetItemCollect() const { return mItemCollect; }

	int GetScore() const { return mScore; }

	const VECTOR& GetHeadPosition() const { return mHeadPosition; }

private:
	// 制動率
	const float		mBrakeRate;

	// 羽ばたくことで発生するプレイヤーが上昇する力
	const float		mFlapForce;

	// スピードの制限値
	const float		mSpeedLimit;

	// スレスレ回避ボーナスのスコア増分
	const int		mAvoidBonusScore;

	// アイテム取得によるスコア増分
	const int		mItemScore;

	// アイテム取得エフェクトのコマ数
	const int mItemEffectFrameMass;

	// バルーンクラス
	Balloon *									mBalloon;

	// プレイヤーにだけつけるもう一つのコライダー
	// スレスレで弾を避けたという判定に使う
	BoxCollider *								mTriggerCollider;

	// アイテム取得エフェクトハンドル
	int*										mItemEffectHandleArray;

	// 頭の位置
	VECTOR										mHeadPosition;

	// 着地フラグ

	// 内側のコライダーから頂点をどのくらいずらすか
	VECTOR										mTriggerColliderVertexOffset;

	// 1フレーム内における接触したコライダーと、それとプレイヤーとの接触判定回数を関連付けたマップデータ
	std::unordered_map<BoxCollider*, char>		mNumberOfHit;

	// 前フレームで接触した回数を弾コリジョン毎に記録
	std::unordered_map<BoxCollider*, char>		mPrevNumberOfHitBullet;

	// スコア
	int											mScore;

	// 集めたアイテムの数
	int											mItemCollect;

	// アイテム取得エフェクトの再生フラグ
	bool										mItemEffectFlag;

	// 表示するアイテム取得エフェクトのコマ番号
	int											mItemEffectCounter;

	// 速度ベクトルを位置ベクトルに加算する関数
	void Move();

	// アイテム取得エフェクトの更新
	void UpdateItemEffect();

	// スレスレ回避ボーナスのチェック関数
	void CheckAvoidBonus();

	// 接触判定回数のリセット
	void ResetNumberOfHit();

	// 地面との当たり判定関数
	// 処理が肥大化したため作成する
	void OnHitGround(const BoxCollider& opponentCollision);

	//// 当たったGroundのBoxColliderが床か壁か天井かを認識する
	//// OnHitGround内でのみ使用
	//void OnHitGround_RecognizeCollider(const BoxCollider& opponentCollision);
};
