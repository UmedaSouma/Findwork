#pragma once
//===========================================================================================================================================================
// 
// car.cpp�̃w�b�_�[ [car.h]
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

	// ���݂̃p�����[�^�[
	struct CurrParam
	{
		int nLife;
		int nGear;
		float Speed;
	};

	// ���C�̎n�_�̈ʒu
	typedef enum
	{
		CENTER = 0,
		FRONT_RIGHT,
		FRONT_LEFT,
		BACK_RIGHT,
		BACK_LEFT,
	}START_POINT;

	// �Ԃ̃A�N�V����
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
	HRESULT Init()override;	// �����ݒ�
	void Uninit()override;	// �I��
	void Update()override;	// �X�V
	void Draw()override;	// �`��

	void MeshCollision(START_POINT point);	// ���b�V���Ƃ̓����蔻��
	void ViewSetting();	// �\���X�s�[�h�̐ݒ�
	void InitType(CParamStorage::TYPE type);		// �^�C�v���Ƃ̏����ݒ�
	void PramSet();
	void TarboCamera();	// �^�[�{�g�p���̃J�����̋���
	void HitObstacle();	// ��Q���Ɠ�����܂�

	static CCar* Create();   // ��������

	//-------------------------------------------------------
	// �Ԃ̃A�N�V����
	//-------------------------------------------------------
	void ActionAccele();	// �A�N�Z��(����
	void ActionBrake();		// �u���[�L(����
	float ActionBend();		// �Ȃ���
	void ActionBend_R();	// �E�ɋȂ���
	void ActionBend_L();	// ���ɋȂ���
	void ActionTurbo();		// �u�[�X�g(�}����
	void ActionAttack();	// �U��(�ːi
	//===================================================================

private:
	CurrParam m_CurrParam;			// ���݂̃p�����[�^�[
	CParamStorage::Param m_Param;	// �p�����[�^�[�������ϐ�
	CParamStorage::TYPE m_type;		// �Ԃ̃^�C�v
	ACTION_STATE m_Action;			// �Ԃ̌��݂̏��

	float m_fAccumulationSpeed;		// �~�σX�s�[�h(���݂̃X�s�[�h
	float m_fOldSpeed;				// �~�σX�s�[�h(1�t���[���O
	D3DXVECTOR3 m_oldmove;			// �ߋ��̈ړ��l
	float m_fMoveAngle;				// �ړ�����
	int m_nTurboInterval;			// �^�[�{�̊Ԋu
	bool m_bDeath;	// ���񂾔���
	int m_nDeathCount;	// ���񂾌�ɏ����t���[�����J�E���g

	CSphere* m_pSphere;	// �����蔻��̉���
public:

	//================================================
	// Setter,Getter
	//================================================

	//-- �d�� --
	void SetWeight(float Weight) { m_Param.fWeight = Weight; }
	float GetWeight() { return m_Param.fWeight; }

	//-- �M�A�̐� --
	void SetGearNum(int num) { m_Param.nMaxGear = num; }
	int GetGearNum() { return m_Param.nMaxGear; }
	
	//-- �Ȃ���₷�� --
	void SetBending(float benging) { m_Param.fBending = benging; }
	float GetBending() { return m_Param.fBending; }

	//-- �M�A���Ƃ̍ō����x --
	void SetMaxSpeed(int idx, float MaxSpeed) { m_Param.fMaxSpeed[idx] = MaxSpeed; }
	float GetfMaxSpeed(int idx) { return m_Param.fMaxSpeed[idx]; }

	//-- �ő�̗� --
	void SetMaxLife(int maxlife) { m_Param.nMaxLife = maxlife; }
	int GetMaxLife() { return m_Param.nMaxLife; }

	//-- �^�C�v --
	void SetTypeCar(CParamStorage::TYPE type) { m_type = type; }
	CParamStorage::TYPE GetTypeCar() { return m_type; }

	//-- �~�σX�s�[�h --
	void SetAccumulationSpeed(float speed) { m_fAccumulationSpeed = speed; }
	float GetAccumulationSpeed() { return m_CurrParam.Speed; }

	//-- �~�σX�s�[�h --
	void SetGear(int gear) { m_CurrParam.nGear = gear; }
	int GetGear() { return m_CurrParam.nGear; }

	//-- �ړ����� --
	float GetMoveAngle() { return m_fMoveAngle; }

	//-- ���񂾂��ǂ��� --
	void SetDeath() { m_bDeath = true; }
	bool GetDeath() { return m_bDeath; }
};

#endif // !CAR_H_