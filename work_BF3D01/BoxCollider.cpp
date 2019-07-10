#include "BoxCollider.h"

BoxCollider::BoxCollider(Actor * owner, VECTOR vertex, VECTOR inversionVertex):
	Cube(vertex, inversionVertex, true, false),
	mOwner(owner)
{
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
