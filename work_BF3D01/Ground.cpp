#include "Ground.h"
#include "Input.h"

Ground::Ground(const VECTOR& vertex, const VECTOR& inversionVertex, unsigned int color) :
	Actor(-1),
	mVisualCube(vertex, inversionVertex, false, true, color)
{
	mCollider->SetVertexes(vertex, inversionVertex);
	mCollider->SetColliderTag(BoxCollider::GroundCollider);
}

Ground::~Ground()
{
}

void Ground::Update(float deltaTime)
{
	// 何もしない。だって地面だもの。-----まつを
}

void Ground::Draw()
{
	if (Input::GetInstance().GetInput(KEY_INPUT_SPACE) == Input::Off)
	{
		mVisualCube.Draw();
	}

	mCollider->Draw();
}
