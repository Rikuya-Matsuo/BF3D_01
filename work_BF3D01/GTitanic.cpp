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
	// �i�������A�K�؂łȂ��Ƃ��A�ׂ������Ƃ��A�l����łȂ����A��҂��E�E�E�j
	vertex[0].pos = graph.position;

	vertex[1].pos = graph.position;
	vertex[1].pos.x += graph.w * cosf(zAngle);
	vertex[1].pos.z += graph.w * sinf(zAngle);

	vertex[2].pos = graph.position;
	vertex[2].pos.y -= graph.h * sinf(yAngle);
	vertex[2].pos.z += graph.h * cosf(yAngle);

	VECTOR dif1 = VSub(vertex[1].pos, graph.position);
	VECTOR dif2 = VSub(vertex[2].pos, graph.position);
	VECTOR difResult = VAdd(dif1, dif2);
	vertex[3].pos = VAdd(graph.position, difResult);

	vertex[4].pos = vertex[2].pos;
	vertex[5].pos = vertex[1].pos;

	DxLib::DrawPolygon3D(vertex, 2, graph.handle, graph.trans);
}

void GTitanic::DrawGraph(const GraphF & graph)
{
	DxLib::DrawExtendGraphF(graph.position.x, graph.position.y,
		graph.position.x + graph.w, graph.position.y + graph.h,
		graph.handle, graph.trans);
}

void GTitanic::GetGraphCenter(VECTOR& dst, const GraphF & graph, bool useAs3D, const VECTOR & norm)
{
	// �摜�̉E��A�����A�E���̍��W
	VECTOR verPos[3];
	for (int i = 0; i < 3; ++i)
	{
		verPos[i] = graph.position;
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

	// �e���_�̍��W���v�Z
	verPos[0].x += graph.w * cosf(zAngle);
	verPos[0].z += graph.w * sinf(zAngle);

	verPos[1].y -= graph.h * sinf(yAngle);
	verPos[1].z += graph.h * cosf(yAngle);

	VECTOR dif1 = VSub(verPos[0], graph.position);
	VECTOR dif2 = VSub(verPos[1], graph.position);
	VECTOR difResult = VAdd(dif1, dif2);
	verPos[2] = VAdd(graph.position, difResult);

	// �Ίp���x�N�g��
	VECTOR diagonal = VSub(verPos[2], graph.position);

	dst = VAdd(graph.position, VScale(diagonal, 0.5f));
}
