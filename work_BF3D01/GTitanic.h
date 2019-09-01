#pragma once
#include "DxLib.h"
#include "Graph.h"
#include <math.h>

namespace GTitanic
{
	int LoadGraph(GraphF& graph, const char * fileName);

	void SetTransFlag(GraphF& graph, int trans);

	void SetPosition(GraphF& graph, const VECTOR& in_pos);

	void ExtendGraph(GraphF& graph, float extendRate);

	void ResetExtendRate(GraphF& graph);

	void DrawGraph3D(const GraphF& graph, const VECTOR& norm = VGet(0, 0, -1));

	// 未実装
	void DrawExtendGraph3D(const GraphF& graph, float extendRate, const VECTOR& norm = VGet(0, 0, -1));

	void DrawGraph(const GraphF& graph);

	void GetGraphCenter(VECTOR& dst, const GraphF& graph, bool useAs3D, const VECTOR& norm = VGet(0, 0, -1));
}
