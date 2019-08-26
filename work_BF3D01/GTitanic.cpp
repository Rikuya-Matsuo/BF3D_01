#include "GTitanic.h"

int GTitanic::LoadGraph(GraphF & graph, const char * fileName)
{
	graph.handle = DxLib::LoadGraph(fileName);
	if (graph.handle == -1)
	{
		return -1;
	}

	DxLib::GetGraphSizeF(graph.handle, &graph.w, &graph.h);

	graph.extendRate = 1.0f;

	return graph.handle;
}

void GTitanic::SetTransFlag(GraphF& graph, int trans)
{
	graph.trans = trans;
}

void GTitanic::SetPosition(GraphF& graph, const VECTOR& in_pos)
{
	graph.position = in_pos;
}

void GTitanic::ExtendGraph(GraphF & graph, float extendRate)
{
	graph.extendRate = extendRate;
	graph.w *= graph.extendRate;
	graph.h *= graph.extendRate;
}

void GTitanic::ResetExtendRate(GraphF & graph)
{
	DxLib::GetGraphSizeF(graph.handle, &graph.w, &graph.h);
	graph.extendRate = 1.0f;
}

void GTitanic::DrawGraph3D(const GraphF & graph, const VECTOR& norm)
{
	// �|���S���̒��_���
	VERTEX3D vertex[6];
	for (int i = 0; i < 6; ++i)
	{
		// �@���̐ݒ�
		vertex[i].norm = norm;

		// �e�N�X�`�����W
		float uVal;
		float vVal;
		switch (i)
		{
		case 0:
			uVal = vVal = 0.0f;
			break;
		case 1:
			uVal = 1.0f;
			vVal = 0.0f;
			break;
		case 2:
			uVal = 0.0f;
			vVal = 1.0f;
			break;
		case 3:
			uVal = vVal = 1.0f;
			break;
		case 4:
			uVal = vertex[2].u;
			vVal = vertex[2].v;
			break;
		case 5:
			uVal = vertex[1].u;
			vVal = vertex[1].v;
			break;
		default:
			break;
		}
		vertex[i].u = uVal;
		vertex[i].v = vVal;
	}
	
	// �@���Ɛ^���Ƃ̊p�x�Z�o
	const VECTOR rightVec = VGet(1, 0, 0);
	float xAngle = VRad(norm, rightVec);

	// �@���Ɛ^��Ƃ̊p�x�Z�o
	const VECTOR upVec = VGet(0, 1, 0);
	float yAngle = VRad(norm, upVec);

	// �@���Ǝ�O�Ƃ̊p�x�Z�o
	const VECTOR nearVec = VGet(0, 0, -1);
	float zAngle = VRad(norm, nearVec);

	// ���W�ݒ�
	vertex[0].pos = graph.position;

	vertex[1].pos = graph.position;
	vertex[1].pos.x += graph.w * cosf(xAngle);
	vertex[1].pos.z += graph.w * sinf(zAngle);

	vertex[2].pos = graph.position;
	vertex[2].pos.x += graph.h * cosf(xAngle);
	vertex[2].pos.y -= graph.h * cosf(yAngle);
	vertex[2].pos.z += graph.h * sinf(zAngle);

	vertex[3].pos = VAdd(vertex[1].pos, vertex[2].pos);

	vertex[4].pos = vertex[2].pos;
	vertex[5].pos = vertex[1].pos;

	DxLib::DrawPolygon3D(vertex, 2, graph.handle, graph.trans);
}
