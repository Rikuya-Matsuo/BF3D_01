#include "Diamond.h"

Diamond::Diamond(int modelHandle, State state, bool gravityFlag, float gravityRate, bool drawFlag):
	Actor(modelHandle, state, gravityFlag, gravityRate, drawFlag)
{
	MV1SetRotationXYZ(mModelHandle, VGet(DX_PI_F / 2.0f, 0, 0));

	mCollider->SetColliderTag(BoxCollider::ItemCollider);
}

Diamond::~Diamond()
{
	if (mModelHandle > 0)
	{
		MV1DeleteModel(mModelHandle);
	}
}

void Diamond::Update(float deltaTime)
{
	MV1SetPosition(mModelHandle, mPosition);

	mCollider->SetVertexes(VSub(mPosition, VGet(2, 3, 0)), VAdd(mPosition, VGet(2, 5, 0)));
}

void Diamond::OnCollisionHit(const BoxCollider & opponentCollider)
{
	char opponentTag = opponentCollider.GetColliderTag();
	if (opponentTag == BoxCollider::PlayerCollider)
	{
		// 当たったコライダーがプレイヤーの本体ならば消える。
		// ポインタを使って同一のものかどうかを判定している。
		Actor * player = opponentCollider.GetOwnerPointer();
		if (&opponentCollider == &(player->GetCollider()))
		{
			SetState(Actor::Dead);
		}
	}
}
