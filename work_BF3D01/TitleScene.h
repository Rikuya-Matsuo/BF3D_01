#pragma once
#include "SceneBase.h"
#include "GameSystem.h"

class TitleScene : public SceneBase
{
public:
	TitleScene();
	~TitleScene();

	void Update(float deltaTime)override;
	void Draw() override;
};
