#pragma once
#include "SceneBase.h"
#include "GameSystem.h"
#include "Input.h"
#include "GameScene.h"

class TitleScene : public SceneBase
{
public:
	TitleScene();
	~TitleScene();

	void Update(float deltaTime)override;
	void Draw() override;

private:
};
