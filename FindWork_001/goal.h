#pragma once
//===========================================================================================================================================================
// 
// goal.cpp�̃w�b�_�[ [goal.h]
// Author : souma umeda
// 
//===========================================================================================================================================================
#ifndef _GOAL_H_
#define _GOAL_H_
#include "main.h"
#include "model.h"
#include "car_player.h"

class CGoal :public CModel
{
	// �S�[���ƏՓˎ��̐i�s����
	typedef enum
	{
		RUN_BACK = -1,
		RUN_NONE,
		RUN_FRONT,
		RUN_MAX
	}RUNTYPE;

public:
	CGoal(int nPrio = PRIORITY_DEFAULT - 1);
	~CGoal()override;
	HRESULT Init()override;	// �����ݒ�
	void Uninit()override;	// �I��
	void Update()override;	// �X�V
	void Draw()override;	// �`��
	RUNTYPE CollisionGoalPlayer(CCarPlayer*pPlayer);	// 

	static CGoal* Create();   // ��������
private:
	RUNTYPE m_runtype;	// �S�[���Փˎ��̐i�s����
	bool m_bF;
	bool m_bL;
};

#endif // !GOAL_H_