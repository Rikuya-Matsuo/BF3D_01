#pragma once
#include "SceneBase.h"
#include "GameSystem.h"
#include "Input.h"
#include "Graph.h"
#include "GTitanic.h"
#include "GameScene.h"

class TitleScene : public SceneBase
{
public:
	TitleScene();
	~TitleScene();

	void Update(float deltaTime) override;
	void Draw() override;

private:
	// ロゴの画像データ
	GraphF mLogo;
};
