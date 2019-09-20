#pragma once
#include "Actor.h"
#include "Cube.h"

class Ground : public Actor
{
public:
	Ground(const VECTOR & vertex, const VECTOR & inversionVertex, unsigned int color);
	~Ground();

	void Update(float deltaTime) override;
	void Draw() override;

	void LoadTexture(const char * fileName) { mVisualCube.LoadTexture(fileName); }

private:
	// 描画するための矩形
	Cube mVisualCube;
};
