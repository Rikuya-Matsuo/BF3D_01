#include "Actor.h"

// 今後このゲームシステムシングルトンを使いまわすことを考えて、
// 「プロジェクト内に物理法則クラスを含む」ことを示すマクロを定義。
// ついでにpragma onceを少し古い方法で書いてみた。メリットはないがデメリットもない。多分。
#ifndef _PHYSICAL_RULE
#define _PHYSICAL_RULE 1

class PhysicalRule final
{
public:
	static PhysicalRule& GetInstance()
	{
		static PhysicalRule instance;
		return instance;
	}

	~PhysicalRule();

	//アクターを落下させる関数
	void Fall (Actor& actor) const;

	//重力加速度セッター
	void SetGravity(float value) { mGravity = value; }

	//重力加速度ゲッター
	//セッターがあるならゲッターもあったほうがいいよねってことで。
	float GetGravity() { return mGravity; }

private:
	PhysicalRule();

	float mGravity;
};

#endif
