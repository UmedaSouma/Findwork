#pragma once
//===========================================================================================================================================================
// 
// goal.cppのヘッダー [goal.h]
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
	// ゴールと衝突時の進行方向
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
	HRESULT Init()override;	// 初期設定
	void Uninit()override;	// 終了
	void Update()override;	// 更新
	void Draw()override;	// 描画
	RUNTYPE CollisionGoalPlayer(CCarPlayer*pPlayer);	// 

	static CGoal* Create();   // 生成処理
private:
	RUNTYPE m_runtype;	// ゴール衝突時の進行方向
	bool m_bF;
	bool m_bL;
};

#endif // !GOAL_H_