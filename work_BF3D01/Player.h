#pragma once
#include "Actor.h"
#include "Common.h"
#include <unordered_map>

class Player : public Actor
{
public:
	Player(int modelHandle, State state = State::Active, bool gravityFlag = true, float gravityRate = 0.5f, bool drawFlag = true);
	~Player();

	void Update(float deltaTime) override;
	void OnCollisionHit(const BoxCollider& opponentCollision) override;
	void Draw() override;

	int GetItemCollect() const { return mItemCollect; }

private:
	// 制動率
	const float mBrakeRate;

	// 羽ばたくことで発生するプレイヤーが上昇する力
	const float mFlapForce;

	// スピードの制限値
	const float mSpeedLimit;

	// バルーンのモデルハンドル
	int mBalloonModel;

	// バルーンのプレイヤーに対する相対位置
	VECTOR mBalloonPositionOffset;

	// 着地フラグ

	// プレイヤーにだけつけるもう一つのコライダー
	// スレスレで弾を避けたという判定に使う
	BoxCollider * mTriggerCollider;

	// 1フレーム内における接触したコライダーと、それとプレイヤーとの接触判定回数を関連付けたマップデータ
	std::unordered_map<BoxCollider*, char> mNumberOfHit;

	// 前フレームで接触した回数を弾コリジョン毎に記録
	std::unordered_map<BoxCollider*, char> mPrevNumberOfHitBullet;

	// 弾との当たり判定を行った回数（問題ありなのでまだ定義しない）
	// char mNumOfCheckCollisionAgainstBullet;

	// 集めたアイテムの数
	int mItemCollect;

	// アイテム取得エフェクトの再生フラグ
	bool mItemEffectFlag;

	// アイテム取得エフェクトのコマ数
	const int mItemEffectFrameMass;

	// アイテム取得エフェクトハンドル
	int* mItemEffectHandleArray;

	// 表示するアイテム取得エフェクトのコマ番号
	int mItemEffectCounter;

	// 速度ベクトルを位置ベクトルに加算する関数
	void Move();

	// アイテム取得エフェクトの更新
	void UpdateItemEffect();

	// 接触判定回数のリセット
	void ResetNumberOfHit();

	// 地面との当たり判定関数
	// 処理が肥大化したため作成する
	void OnHitGround(const BoxCollider& opponentCollision);

	//// 当たったGroundのBoxColliderが床か壁か天井かを認識する
	//// OnHitGround内でのみ使用
	//void OnHitGround_RecognizeCollider(const BoxCollider& opponentCollision);
};
