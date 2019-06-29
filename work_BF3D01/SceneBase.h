#pragma once

class SceneBase
{
public:
	SceneBase();
	virtual ~SceneBase();

	virtual void Update(float deltaTime) = 0;
	virtual void Draw();

	void GoNextScene(SceneBase * nextScene);

protected:
	bool mGoNextSceneFlag;

};
