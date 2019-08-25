#include "Cannon.h"

Cannon::Cannon(int modelHandle, State state, bool gravityFlag, float gravityRate, bool drawFlag):
	Actor(modelHandle, state, gravityFlag, gravityRate, drawFlag)
{
	VECTOR zero = VGet(0.0f, 0.0f, 0.0f);

	mCollider->SetVertexes(zero, zero);
}

Cannon::~Cannon()
{
}

void Cannon::Shoot(VECTOR direction, Bullet * shot)
{
	// 方向ベクトルを正規化
	direction = VNorm(direction);

	// 弾の速度を設定
	shot->SetVelocity(VScale(direction, shot->GetSpeed()));

	// 弾の位置を設定
	shot->SetPosition(mPosition);

	// 弾をアクティブに
	shot->SetState(Actor::Active);
}
