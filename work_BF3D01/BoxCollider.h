#pragma once
#include "Cube.h"
#include "Actor.h"

class Actor;

class BoxCollider : public Cube
{
public:
	BoxCollider(Actor * owner, VECTOR vertex, VECTOR inversionVertex);
	~BoxCollider();

private:
	Actor * mOwner;

	friend bool CheckCollision_Ver2D(const BoxCollider& obj1, const BoxCollider& obj2);
};

// Z•ûŒü‚Ì‚±‚Æ‚ğl‚¦‚È‚¢“–‚½‚è”»’è
bool CheckCollision_Ver2D(const BoxCollider& obj1, const BoxCollider& obj2);
