#pragma once
#include "DxLib.h"
#include "SceneBase.h"

class GameScene : public SceneBase
{
public:
	GameScene();
	~GameScene();

	void Update(float deltaTime) override;
	void Draw();

private:

};
