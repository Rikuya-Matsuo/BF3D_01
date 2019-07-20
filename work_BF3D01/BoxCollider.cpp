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

void BoxCollider::Update()
{
	// いちいち添え字を書くのが面倒なのでポインタで指す
	VECTOR * forRewrite;

	for (char x = 0; x < Invalid_CornerX; ++x)
	{
		EnumCornerX cornerX = (EnumCornerX)x;
		for (char y = 0; y < Invalid_CornerY; ++y)
		{
			EnumCornerY cornerY = (EnumCornerY)y;
			for (char z = 0; z < Invalid_CornerZ; ++z)
			{
				EnumCornerZ cornerZ = (EnumCornerZ)z;

				forRewrite = &mCornerPosition[cornerX][cornerY][cornerZ];

				forRewrite->x = GetCornerPositionX(cornerX);
				forRewrite->y = GetCornerPositionY(cornerY);
				forRewrite->z = GetCornerPositionZ(cornerZ);
			}
		}
	}
}

float BoxCollider::GetCornerPositionX(EnumCornerX cornerX)
{
	float ret = 0.0f;
	if (cornerX == EnumCornerX::RightCorner)
	{
		ret = GetLargeValueVertex().x;
	}
	else if (cornerX == EnumCornerX::LeftCorner)
	{
		ret = GetSmallValueVertex().x;
	}

	return ret;

	/*
	// 取得する
	mCornerPositionXArray[EnumCornerX::LeftCorner] = GetSmallValueVertex().x;
	mCornerPositionXArray[EnumCornerX::RightCorner] = GetLargeValueVertex().x;

	return mCornerPositionXArray[cornerX];
	*/
}

float BoxCollider::GetCornerPositionY(EnumCornerY cornerY)
{
	float ret = 0.0f;
	if (cornerY == EnumCornerY::UpCorner)
	{
		ret = GetLargeValueVertex().y;
	}
	else if (ret == EnumCornerY::DownCorner)
	{
		ret = GetSmallValueVertex().y;
	}
	
	return ret;
	/*
	// 取得する
	mCornerPositionYArray[EnumCornerY::DownCorner] = GetSmallValueVertex().y;
	mCornerPositionYArray[EnumCornerY::UpCorner] = GetLargeValueVertex().y;

	return mCornerPositionYArray[cornerY];
	*/
}

float BoxCollider::GetCornerPositionZ(EnumCornerZ cornerZ)
{
	float ret = 0.0f;
	if (cornerZ == EnumCornerZ::FarCorner)
	{
		ret = GetLargeValueVertex().z;
	}
	else if (cornerZ == EnumCornerZ::NearCorner)
	{
		ret = GetSmallValueVertex().z;
	}

	return ret;
	/*
	// 取得する
	mCornerPositionZArray[EnumCornerZ::NearCorner] = GetSmallValueVertex().z;
	mCornerPositionZArray[EnumCornerZ::FarCorner] = GetLargeValueVertex().z;

	return mCornerPositionZArray[cornerZ];
	*/
}

void BoxCollider::GetCornerPositionArrayNear(VECTOR * destination, size_t size)
{
	for (int i = 0; i < size; ++i)
	{
		EnumCornerX cornerX = (!i || i == 3) ? RightCorner : LeftCorner;
		EnumCornerY cornerY = (i <= 1) ? UpCorner : DownCorner;

		destination[i] = mCornerPosition[cornerX][cornerY][NearCorner];
	}
}

bool CheckCollision_2DVersion(const BoxCollider & obj1, const BoxCollider & obj2)
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

bool CheckCollisionAndPoint_2DVersion(const VECTOR & point, const BoxCollider & collider)
{
	bool ret = false;

	VECTOR smallValueEdge = collider.GetSmallValueVertex();
	VECTOR largeValueEdge = collider.GetLargeValueVertex();

	ret = (point.x > smallValueEdge.x && point.x < largeValueEdge.x &&
		point.y > smallValueEdge.y && point.y < largeValueEdge.y);

	return ret;
}
