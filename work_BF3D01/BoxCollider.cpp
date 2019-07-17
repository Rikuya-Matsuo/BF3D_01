#include "BoxCollider.h"
#include "GameSystem.h"

BoxCollider::BoxCollider(Actor * owner, char tag, VECTOR vertex, VECTOR inversionVertex):
	Cube(vertex, inversionVertex, true, false),
	mOwner(owner),
	mTag(tag)
{
	GameSystem::GetInstance().AddCollider(this);
}

BoxCollider::~BoxCollider()
{
}

bool CheckCollision_Ver2D(const BoxCollider & obj1, const BoxCollider & obj2)
{
	bool ret = false;

	VECTOR obj1VertexS, obj1VertexL;
	VECTOR obj2VertexS, obj2VertexL;

	obj1VertexS = obj1.GetSmallValueVertex();
	obj1VertexL = obj1.GetLargeValueVertex();

	obj2VertexS = obj2.GetSmallValueVertex();
	obj2VertexL = obj2.GetLargeValueVertex();

	if (((obj1VertexS.x > obj2VertexS.x && obj1VertexS.x < obj2VertexL.x) ||
		(obj1VertexL.x > obj2VertexS.x && obj1VertexL.x < obj2VertexL.x)) &&
		((obj1VertexS.y > obj2VertexS.y && obj1VertexS.y < obj2VertexL.y) ||
		(obj1VertexL.y > obj2VertexS.y && obj1VertexL.y < obj2VertexL.y)))
	{
		ret = true;
	}

	return ret;
}

bool CheckCollisionAndPoint_Ver2D(const VECTOR & point, const BoxCollider & collider)
{
	bool ret = false;

	VECTOR smallValueEdge = collider.GetSmallValueVertex();
	VECTOR largeValueEdge = collider.GetLargeValueVertex();

	ret = (point.x > smallValueEdge.x && point.x < largeValueEdge.x &&
		point.y > smallValueEdge.y && point.y < largeValueEdge.y);

	return ret;
}
