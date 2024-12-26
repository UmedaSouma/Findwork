#pragma once
//===========================================================================================================================================================
// 
// car.cppのヘッダー [car.h]
// Author : souma umeda
// 
//===========================================================================================================================================================
#ifndef _CAR_H_
#define _CAR_H_
#include "main.h"
#include "param_storage.h"
#include "actor.h"
#include "sphere.h"

class CCar:public CActor
{
private:

	// 現在のパラメーター
	struct CurrParam
	{
		int nLife;
		int nGear;
		float Speed;
	};

	// レイの始点の位置
	typedef enum
	{
		CENTER = 0,
		FRONT_RIGHT,
		FRONT_LEFT,
		BACK_RIGHT,
		BACK_LEFT,
	}START_POINT;

	// 車のアクション
	typedef enum
	{
		NONE = 0,
		ACCELE,
		BRAKE,
		TURBO,
		MAX
	}ACTION_STATE;

public:
	CCar();
	~CCar()override;
	HRESULT Init()override;	// 初期設定
	void Uninit()override;	// 終了
	void Update()override;	// 更新
	void Draw()override;	// 描画

	void MeshCollision(START_POINT point);	// メッシュとの当たり判定
	void ViewSetting();	// 表示スピードの設定
	void InitType(CParamStorage::TYPE type);		// タイプごとの初期設定
	void PramSet();
	void TarboCamera();	// ターボ使用時のカメラの挙動
	void HitObstacle();	// 障害物と当たるまで

	static CCar* Create();   // 生成処理

	//-------------------------------------------------------
	// 車のアクション
	//-------------------------------------------------------
	void ActionAccele();	// アクセル(加速
	void ActionBrake();		// ブレーキ(減速
	float ActionBend();		// 曲がる
	void ActionBend_R();	// 右に曲がる
	void ActionBend_L();	// 左に曲がる
	void ActionTurbo();		// ブースト(急加速
	void ActionAttack();	// 攻撃(突進
	//===================================================================

private:
	CurrParam m_CurrParam;			// 現在のパラメーター
	CParamStorage::Param m_Param;	// パラメーターを扱う変数
	CParamStorage::TYPE m_type;		// 車のタイプ
	ACTION_STATE m_Action;			// 車の現在の状態

	float m_fAccumulationSpeed;		// 蓄積スピード(現在のスピード
	float m_fOldSpeed;				// 蓄積スピード(1フレーム前
	D3DXVECTOR3 m_oldmove;			// 過去の移動値
	float m_fMoveAngle;				// 移動方向
	int m_nTurboInterval;			// ターボの間隔
	bool m_bDeath;	// 死んだ判定
	int m_nDeathCount;	// 死んだ後に消すフレームをカウント

	CSphere* m_pSphere;	// 当たり判定の可視化
public:

	//================================================
	// Setter,Getter
	//================================================

	//-- 重さ --
	void SetWeight(float Weight) { m_Param.fWeight = Weight; }
	float GetWeight() { return m_Param.fWeight; }

	//-- ギアの数 --
	void SetGearNum(int num) { m_Param.nMaxGear = num; }
	int GetGearNum() { return m_Param.nMaxGear; }
	
	//-- 曲がりやすさ --
	void SetBending(float benging) { m_Param.fBending = benging; }
	float GetBending() { return m_Param.fBending; }

	//-- ギアごとの最高速度 --
	void SetMaxSpeed(int idx, float MaxSpeed) { m_Param.fMaxSpeed[idx] = MaxSpeed; }
	float GetfMaxSpeed(int idx) { return m_Param.fMaxSpeed[idx]; }

	//-- 最大体力 --
	void SetMaxLife(int maxlife) { m_Param.nMaxLife = maxlife; }
	int GetMaxLife() { return m_Param.nMaxLife; }

	//-- タイプ --
	void SetTypeCar(CParamStorage::TYPE type) { m_type = type; }
	CParamStorage::TYPE GetTypeCar() { return m_type; }

	//-- 蓄積スピード --
	void SetAccumulationSpeed(float speed) { m_fAccumulationSpeed = speed; }
	float GetAccumulationSpeed() { return m_CurrParam.Speed; }

	//-- 蓄積スピード --
	void SetGear(int gear) { m_CurrParam.nGear = gear; }
	int GetGear() { return m_CurrParam.nGear; }

	//-- 移動方向 --
	float GetMoveAngle() { return m_fMoveAngle; }

	//-- 死んだかどうか --
	void SetDeath() { m_bDeath = true; }
	bool GetDeath() { return m_bDeath; }
};

#endif // !CAR_H_