#pragma once
#include "DxLib.h"

class Light
{
public:
	Light() {};
	Light(const VECTOR& dir);
	~Light();

	void SetDirection(const VECTOR& dir) { SetLightDirection(dir); }
	void SetSpcColor(const COLOR_F& color) { SetLightSpcColor(color); }
	void SetAmbColor(const COLOR_F& color) { SetLightAmbColor(color); }
	void SetGlobalAmbientLight(const COLOR_F& color) { DxLib::SetGlobalAmbientLight(color); }
};

