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
	GameSystem::GetInstance().RemoveCollider(this);
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

	VECTOR smallObjVertexS, smallObjVertexL;
	VECTOR bigObjVertexS, bigObjVertexL;

	// どちらのコリジョンの方が大きいかの判定
	if (VSize(obj1.GetSize()) < VSize(obj2.GetSize()))
	{
		smallObjVertexS = obj1.GetSmallValueVertex();
		smallObjVertexL = obj1.GetLargeValueVertex();

		bigObjVertexS = obj2.GetSmallValueVertex();
		bigObjVertexL = obj2.GetLargeValueVertex();
	}
	else
	{
		smallObjVertexS = obj2.GetSmallValueVertex();
		smallObjVertexL = obj2.GetLargeValueVertex();

		bigObjVertexS = obj1.GetSmallValueVertex();
		bigObjVertexL = obj1.GetLargeValueVertex();
	}	

	if (((smallObjVertexS.x > bigObjVertexS.x && smallObjVertexS.x < bigObjVertexL.x) ||
		(smallObjVertexL.x > bigObjVertexS.x && smallObjVertexL.x < bigObjVertexL.x)) &&
		((smallObjVertexS.y > bigObjVertexS.y && smallObjVertexS.y < bigObjVertexL.y) ||
		(smallObjVertexL.y > bigObjVertexS.y && smallObjVertexL.y < bigObjVertexL.y)))
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
