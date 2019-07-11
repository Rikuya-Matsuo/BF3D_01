#pragma once

class UI
{
public:
	static UI& GetInstance()
	{
		static UI instance;
		return instance;
	}

	~UI();

private:
	UI();
};

