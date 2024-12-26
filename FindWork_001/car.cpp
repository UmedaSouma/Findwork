//===========================================================================================================================================================
// 
// �Ԃ̃x�[�X���� [car.cpp]
// Author : souma umeda
// 
//===========================================================================================================================================================
#include "car.h"
#include "course.h"
#include "search.h"
#include "manager.h"
#include "param_storage.h"
#include "backlight.h"
#include "collision.h"
#include "calculation.h"
#include "obstacles.h"
#include "countdown.h"
#include "game.h"

#include <tuple>

//========================================================================================================================
// �R���X�g���N�^
//========================================================================================================================
CCar::CCar()
{
	m_type = CParamStorage::CAR_NORMAL;

	m_fOldSpeed = 0.0f;
	m_Action = NONE;

	m_CurrParam.nGear = 0;
	m_CurrParam.Speed = 0.0f;
	m_CurrParam.nLife = m_Param.nMaxLife;

	m_fMoveAngle = 0.0f;
	m_nTurboInterval = 0;

	m_pSphere = nullptr;

	m_nDeathCount = 0;
	m_bDeath = false;
}

//========================================================================================================================
// �f�X�g���N�^
//========================================================================================================================
CCar::~CCar()
{
}

//========================================================================================================================
// �����ݒ�
//========================================================================================================================
HRESULT CCar::Init()
{
	PramSet();
	m_pSphere = CSphere::Create();

	CActor::Init();

	return S_OK;
}

//========================================================================================================================
// �I������
//========================================================================================================================
void CCar::Uninit()
{
	CActor::Uninit();
}

//========================================================================================================================
// �X�V����
//========================================================================================================================
void CCar::Update()
{
	CCountdown* pCD = CGame::GetCountDown();
	if (pCD != nullptr)
	{
		if (pCD->GetUse())
		{
			return;
		}
	}

	if (m_CurrParam.Speed<=0.0f)
	{
		m_Action = NONE;
	}

	// �^�[�{���̃J��������
	TarboCamera();
	// �^�[�{�Ԋu�̃J�E���g���f�B�N�������g
	m_nTurboInterval--;

	// �p�x
	m_fMoveAngle = atan2f(GetMove().z, GetMove().x);

	D3DXVECTOR3 pos = GetPos();		// �ʒu
	D3DXVECTOR3 move = GetMove();	// �ړ��l
	D3DXVECTOR3 rot = GetRot();		// ����

	// �\����̃X�s�[�h�ݒ�
	ViewSetting();
	
	// ���x���ߋ��̑��x���オ���Ă��Ȃ�������
	if (m_fOldSpeed >= m_CurrParam.Speed)
	{// ���񂾂񌸑�����
		move.x += -1 * ( move.x * 0.01f);
		move.z += -1 * ( move.z * 0.01f);
	}

	// �ʒu��ݒ�
	pos.y += move.y;

	pos.x += sinf(GetRot().y) * move.x;
	pos.z += cosf(GetRot().y) * move.z;

	SetPos(pos);

	if (m_CurrParam.Speed > m_Param.fMaxSpeed[m_CurrParam.nGear] + 10.0f)
	{
		//�o�b�N���C�g�_��
		CBackLight::Create(pos, rot, 100, false);	// �����C�g
		CBackLight::Create(pos, rot, 100, true);	// �E���C�g

	}


	// �ړ��l��ۑ�
	m_oldmove = move;

	// �ړ��l��ݒ�
	SetMove(move);

	HitObstacle();

	CActor::Update();

	if(m_bDeath)
	{
		m_nDeathCount++;
	}

	if (m_nDeathCount >= 600)
	{
		Uninit();
	}
}

//========================================================================================================================
// �`�揈��
//========================================================================================================================
void CCar::Draw()
{
	MeshCollision(FRONT_LEFT);
	MeshCollision(FRONT_RIGHT);
	MeshCollision(BACK_LEFT);
	MeshCollision(BACK_RIGHT);

	CActor::Draw();
}

//===========================================================================================================
// �^�C�v���Ƃ̏����ݒ�
//===========================================================================================================
void CCar::InitType(CParamStorage::TYPE type)
{
	switch (type)
	{
	case CParamStorage::CAR_NORMAL:
		SetModel("data\\model\\car_normal_005.x");	// ���f����ݒ�
		break;

	case CParamStorage::CAR_TRACK:
		SetModel("data\\model\\car_normal_001.x");	// ���f����ݒ�
		break;

	case CParamStorage::CAR_SPORTS:
		SetModel("data\\model\\car_sample.x");	// ���f����ݒ�
		break;

	default:
		break;
	}

	if (m_type == type)
	{
		return;
	}

	// �^�C�v��ݒ肷��
	m_type = type;

	PramSet();
}

//===========================================================================================================
// �p�����[�^�[�̐ݒ�
//===========================================================================================================
void CCar::PramSet()
{
	// �p�����[�^�[�X�g���[�W�N���X�������Ă���
	CParamStorage* pParamStorage = CManager::GetParamStrage();

	if (pParamStorage == nullptr)
	{ return; }

	// �^�C�v�������Ă���
	int type = GetTypeCar();

	// �p�����[�^�[�̐ݒ�
	m_Param.fWeight = pParamStorage->GetWeight(type);
	m_Param.nMaxGear = pParamStorage->GetGearMax(type);
	m_Param.fBending = pParamStorage->GetBending(type);
	m_Param.nMaxLife = pParamStorage->GetMaxLife(type);

	for (int i = 0; i < m_Param.nMaxGear; i++)
	{// �X�s�[�h�̐ݒ�
		m_Param.fMaxSpeed[i] = pParamStorage->GetfMaxSpeed(type, i);
	}
}

//===========================================================================================================
// �^�[�{���̃J��������
//===========================================================================================================
void CCar::TarboCamera()
{
	CCamera* pCamera = CManager::GetCamera();	// camera �������Ă���
	
	if (m_nTurboInterval == 90)
	{// �C���^�[�o���̃J�E���g���n�܂�����
		pCamera->SetFollow(0.01f);
	}
	else if (pCamera->GetFollow() >= 1.0f)
	{// �J�������Ԃɒǂ�������
	}
	else
	{// ���̂ق�

		// �J�����x���������Ă���
		float follow = pCamera->GetFollow();
		
		// ��i�ڂō������߂āA���̍����w��̃t���[�����ŕ�������
		float f = 1.0f - 0.1f;
		f /= 5000;

		// 
		pCamera->SetFollow(follow + f);
	}

}

//===========================================================================================================
// ��Q���Ɠ�����܂ł̏���
//===========================================================================================================
void CCar::HitObstacle()
{
	std::vector<CObstacle*>pObs;
	pObs.clear();

	pObs = CSearch::SearchMultiObject(pObs, OBSTACLE);
	if (pObs.empty()) 
	{ return; }

	unsigned int nSize = pObs.size();
	for (unsigned int i = 0; i < nSize; i++)
	{
		D3DXVECTOR3 obspos = pObs[i]->GetPos();
		float obsrange = pObs[i]->GetSize().x;
		D3DXVECTOR3 carpos = GetPos();
		float carrange = GetSize().z;

		if (CCollision::CircleTrigger(carpos, carrange, obspos, obsrange))
		{
			pObs[i]->HitMovement(this);
		}
	}
}

//===========================================================================================================
// �\����̃X�s�[�h�ݒ�
//===========================================================================================================
void CCar::ViewSetting()
{
	D3DXVECTOR3 move = GetMove();
	D3DXVECTOR3 copymove = GetMove();				// �ړ��l�̃R�s�[
	D3DXVECTOR3 normalize = { 1.0f,1.0f,1.0f };		// ���K���̕ϐ�


	// �\����̐��l�𐮐��ɂ���
	if (move.x < 0.0f)
	{
		normalize.x = -1;
	}
	if (move.z < 0.0f)
	{
		normalize.z = -1;
	}

	copymove.x = copymove.x * normalize.x;
	copymove.z = copymove.z * normalize.z;

	// �����ڂ̃X�s�[�h
	m_CurrParam.Speed = sqrtf(copymove.x * copymove.x + copymove.z * copymove.z);

	// �\����̃X�s�[�h��ۑ�
	m_fOldSpeed = m_CurrParam.Speed;
}

//===========================================================================================================
// �A�N�Z������
//===========================================================================================================
void CCar::ActionAccele()
{
	D3DXVECTOR3 move = GetMove();

	// ���̈�O�̃M�A��ݒ�
	int PreGear = m_CurrParam.nGear - 2;

	// �O�̃M�A�� 0 �����ɂȂ��Ă��܂�����
	if (PreGear < 0) 
	{ PreGear = 0; }	// �M�A�� 0 �ɐݒ�

	if (m_CurrParam.Speed < m_Param.fMaxSpeed[m_CurrParam.nGear])
	{// ���݂̃X�s�[�h���ő�X�s�[�h�ɒǂ����Ă��Ȃ�������
		move.x += m_Param.fMaxSpeed[PreGear] * 0.025f;
		move.z += m_Param.fMaxSpeed[PreGear] * 0.025f;
	}

	//SetMove({ move.x,0.0f,move.z });
	SetMove(move);

	m_Action = ACCELE;
}

//===========================================================================================================
// �u���[�L����
//===========================================================================================================
void CCar::ActionBrake()
{
	D3DXVECTOR3 move = GetMove();

	if (m_CurrParam.Speed < m_Param.fMaxSpeed[m_CurrParam.nGear] * 0.5f)
	{
		move.x += m_Param.fMaxSpeed[0] *-0.0125f;
		move.z += m_Param.fMaxSpeed[0] *-0.0125f;
	}

	m_CurrParam.Speed += -0.1f;

	//SetMove({ move.x,0.0f,move.z });
	SetMove(move);

	m_Action = BRAKE;
}

//===========================================================================================================
// ���b�V���̒n�ʂƂ̓����蔻��
//===========================================================================================================
void CCar::MeshCollision(START_POINT point)
{
	CCourse* pCourse = nullptr;
	pCourse = CSearch::SearchObject(pCourse, CObject::COURSE);

	if (pCourse == nullptr)
	{	return;	}

	// ���b�V���ɕK�v�ȏ��
	CModeldata::ModelData* pModelInfo = nullptr;	// ���f�������i�[����ϐ�
	pModelInfo = pCourse->GetModelInfo();			// ���f�����擾
	BOOL pHit = false;		// �����������ǂ������肷��ϐ�
	float Dis = 0.0f;		// ���b�V���Ƃ̋������i�[����ϐ�

	// �v���C���[�̏��
	D3DXVECTOR3 move = GetMove();	// �ړ��l���i�[����ϐ�
	D3DXVECTOR3 pRay = { 0,1,0 };	// ���C���o������

	// �ʒu��ݒ肷�邽�߂̏��
	D3DXVECTOR3 pos = GetPos();	// ���_
	float Ssize = 0.0f, FBsize = 0.0f;	// ���_����ǂꂾ�����炷�� ( S = �T�C�h / FB = �t�����g�o�b�N )

	switch (point)
	{
	case CENTER:
		break;

	case FRONT_LEFT:
		Ssize = 10.0f;
		FBsize = 30.0f;
		break;

	case FRONT_RIGHT:
		Ssize = -10.0f;
		FBsize = 30.0f;
		break;

	case BACK_RIGHT:
		Ssize = -10.0f;
		FBsize = -30.0f;
		break;

	case BACK_LEFT:
		Ssize = 10.0f;
		FBsize = -30.0f;
		break;
	}

	// �ʒu�����炷
	pos = CCalculation::ShiftPosition(
		pos, 
		GetRot(), 
		{ Ssize,FBsize }, 
		CCalculation::ROT_Y);

	if (m_pSphere != nullptr)
	{
		m_pSphere->SetPos(pos);
	}

	// ���b�V���n�ʂƂ̓����蔻��
	std::tie(pHit, Dis)
		= CCollision::MeshCollision(
		pModelInfo->Mesh,
		pRay, 
		pos);

	// ���_���𗘗p���Ăǂ̒��_�̏�ɂ��邩����
	{
		//LPDIRECT3DVERTEXBUFFER9* vtxbuff = nullptr;
		//pModelInfo->Mesh->GetVertexBuffer(vtxbuff);
		//VERTEX_3D* pVtx;

		//// ���_���擾
		//DWORD dwNumVtx = pModelInfo->Mesh->GetNumVertices();
		//D3DXMATRIX mtx = GetMatrix();

		//// �o�b�t�@���b�N
		//pModelInfo->Mesh->LockVertexBuffer(0, (void**)&pVtx);

		////for (unsigned int i = 0; i < 1; i++)
		////{
		////	pVtx[i].pos +=D3DXVECTOR3(mtx._41, mtx._42, mtx._43);
		////}

		//pModelInfo->Mesh->UnlockVertexBuffer();
	}

	// �������Ă��Ȃ������炱���ŕԂ�
	if (pHit != TRUE)
	{	return;	}

	// ����������Ă����牟���߂��Ȃ�
	if (Dis >= 30.0f)
	{	return;	}

	SetPos({
		GetPos().x,
		GetPos().y + Dis + (0.0f),
		GetPos().z
		});

	move.y = 0.0f;

	SetMove(move);
}

//===========================================================================================================
// �J�[�u����
//===========================================================================================================
float CCar::ActionBend()
{
	float fAddRot = 0.0f;	// �������]��

	bool bFront = false;

	if (m_fMoveAngle > 0.0f)
	{// �i��ł�������O�̎�
		bFront = true;
	}

	switch (bFront)
	{// �Ԃ̃X�s�[�h�Ə�Z���邱�Ƃɂ���đ��x���������Ƃ��ɋȂ���Ȃ��悤�ɂ���
	case true:
		fAddRot += 0.005f * m_CurrParam.Speed;
		break;

	case false:
		fAddRot += -0.005f * m_CurrParam.Speed;
		break;
	}

	// ��]�������Ȃ��悤�ɐ���
	if (fAddRot > m_Param.fBending)
	{
		fAddRot = m_Param.fBending;
	}
	else if (fAddRot < -m_Param.fBending)
	{
		fAddRot = -m_Param.fBending;
	}

	if (fAddRot > m_Param.fBending)
	{// ���Z�p�x���p�����[�^�[�̐��l�𒴂��Ă��܂�����
		return m_Param.fBending;	// �ő�̒l��Ԃ�
	}

	return fAddRot;
}

//===========================================================================================================
// �J�[�u�����@�E
//===========================================================================================================
void CCar::ActionBend_R()
{	
	D3DXVECTOR3 rot = GetRot();
	float fAddRot = 0.0f;	// �������]��

	// ���Z�����]�ʂ��擾
	fAddRot = ActionBend();

	// �����ŎԂɉ�����
	rot.y += fAddRot;

	SetRot(rot);
}

//===========================================================================================================
// �J�[�u�����@��
//===========================================================================================================
void CCar::ActionBend_L()
{
	D3DXVECTOR3 rot = GetRot();
	float fAddRot = 0.0f;	// �������]��

	// ���Z�����]�ʂ��擾
	fAddRot = ActionBend();
	// ���Ε����ɂ���
	fAddRot *= -1;

	// �����ŎԂɉ�����
	rot.y += fAddRot;

	SetRot(rot);
}

//===========================================================================================================
// �^�[�{����
//===========================================================================================================
void CCar::ActionTurbo()
{
	if (m_nTurboInterval > 0)
	{
		return;
	}

	D3DXVECTOR3 move = GetMove();
	m_CurrParam.nGear++;

	if (m_Param.nMaxGear <= m_CurrParam.nGear)
	{// �M�A���ő�ȏゾ�����Ƃ�
		m_CurrParam.nGear = m_Param.nMaxGear - 1;
	}

	move.x = m_Param.fMaxSpeed[m_CurrParam.nGear] + 3.0f;
	move.z = m_Param.fMaxSpeed[m_CurrParam.nGear] + 3.0f;

	SetMove(move);

	m_nTurboInterval = 90;
}

void CCar::ActionAttack()
{
	D3DXVECTOR3 move = GetMove();

	move.x = m_Param.fMaxSpeed[m_CurrParam.nGear] + 5.0f;
	move.z = m_Param.fMaxSpeed[m_CurrParam.nGear] + 5.0f;

	SetMove(move);

	//m_nTurboInterval = 90;
}

//========================================================================================================================
// ��������
//========================================================================================================================
CCar* CCar::Create()
{
	CCar* pCar = new CCar;

	pCar->Init();

	return pCar;
}