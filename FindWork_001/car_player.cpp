//===========================================================================================================================================================
// 
// �v���C���[�̎� [car_player.cpp]
// Author : souma umeda
// 
//===========================================================================================================================================================
#include "car_player.h"
#include "manager.h"
#include "fade.h"

//========================================================================================================================
// �R���X�g���N�^
//========================================================================================================================
CCarPlayer::CCarPlayer() :m_pGauge(nullptr)
{

}

//========================================================================================================================
// �f�X�g���N�^
//========================================================================================================================
CCarPlayer::~CCarPlayer()
{
}

//========================================================================================================================
// �����ݒ�
//========================================================================================================================
HRESULT CCarPlayer::Init()
{
	SetType(TYPE::CAR_PLAYER);
	SetSize({ 10.0f,10.0f,30.0f });
	SetPos({ -250.0f,0.0f,0.0f });

	m_pGauge = CGauge::Create();

	CCar::Init();

	return S_OK;
}

//========================================================================================================================
// �I������
//========================================================================================================================
void CCarPlayer::Uninit()
{
	CCar::Uninit();
}

//========================================================================================================================
// �X�V����
//========================================================================================================================
void CCarPlayer::Update()
{
	CCamera* pCamera = CManager::GetCamera();
	D3DXVECTOR3 move = GetMove();
	
	if (pCamera != nullptr)
	{
		D3DXVECTOR3 rot = GetRot();
		D3DXVECTOR3 camerarot = pCamera->GetRot();

		pCamera->SetRot({ camerarot.x,rot.y,camerarot.z });
	}

	move.y -= 3.0f;	// �d�͉��Z
	SetMove(move);

	UpdateGauge();

	CCar::Update();

	// ��U�����ŎE���Ă���
	if (GetPos().y < -250.0f||m_pGauge->GetCurrValue()<=0)
	{
		CFade* pFade = CManager::GetFade();
		pFade->SetFade(CScene::MODE_GAME);
	}
}

//========================================================================================================================
// �`�揈��
//========================================================================================================================
void CCarPlayer::Draw()
{
	CCar::Draw();
}

//===========================================================================================================
// �ԕύX����
//===========================================================================================================
void CCarPlayer::ChangeCar(CParamStorage::TYPE hittype)
{
	InitType(hittype);
}

//========================================================================================================================
// ��������
//========================================================================================================================
CCarPlayer* CCarPlayer::Create(CParamStorage::TYPE cartype)
{
	CCarPlayer* pCarPlayer = new CCarPlayer;

	pCarPlayer->InitType(cartype);

	pCarPlayer->Init();

	return pCarPlayer;
}

//===========================================================================================================
// �Q�[�W�̃A�b�v�f�[�g
//===========================================================================================================
void CCarPlayer::UpdateGauge()
{
	if (m_pGauge == nullptr)
	{	return;	}
	float Curr = m_pGauge->GetCurrValue();

	float Speed = GetAccumulationSpeed();
	if (Speed <= 0)
	{	return; }

	Speed *= 0.1f;

	m_pGauge->SetCurrValue(Curr - Speed);
}

//===========================================================================================================
// �Q�[�W�̉񕜏���
//===========================================================================================================
void CCarPlayer::SetRecoveryGauge(int n)
{
	float Curr = m_pGauge->GetCurrValue();

	if (Curr+n >= m_pGauge->GetMaxValue())
	{// �ő�l�𒴂�����
		m_pGauge->SetCurrValue(m_pGauge->GetMaxValue());	// �ő�l�ɐݒ肷��
		return;
	}

	m_pGauge->SetCurrValue(Curr + n);
}