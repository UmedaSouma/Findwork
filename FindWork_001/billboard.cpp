//===========================================================================================================================================================
// 
// billboard [billboard.cpp]
// Author : souma umeda
// 
//===========================================================================================================================================================
#include "billboard.h"
#include "manager.h"


//========================================================================================================================
// コンストラクタ
//========================================================================================================================
CBillboard::CBillboard(int nPrio) :CObject3D(nPrio)
{
}

//========================================================================================================================
// デストラクタ
//========================================================================================================================
CBillboard::~CBillboard()
{
}

//========================================================================================================================
// 初期設定
//========================================================================================================================
HRESULT CBillboard::Init()
{
	int nTexIdx = 0;

	SetNormalize({ 0.0f,0.0f,-1.0f }); // 法線ベクトルの設定
	//SetSize({ 10.0f,10.0f,0.0f });

	CObject3D::Init();

	return S_OK;
}

//========================================================================================================================
// 終了処理
//========================================================================================================================
void CBillboard::Uninit()
{
	CObject3D::Uninit();
}

//========================================================================================================================
// 更新処理
//========================================================================================================================
void CBillboard::Update()
{
	//CObject3D::Update();
}

//========================================================================================================================
// 描画処理
//========================================================================================================================
void CBillboard::Draw()
{
	CObject3D::InitMatrix();	// マトリックスの初期化

	CObject3D::ViewMatrix();	// ビューマトリックスの取得設定
	CObject3D::YawPitchRoll();	// 拡縮・向き・位置の反映

	CObject3D::SetMatrix();		// マトリックスの設定

	CObject3D::Draw();
}

//========================================================================================================================
// 生成処理
//========================================================================================================================
CBillboard* CBillboard::Create(D3DXVECTOR3 pos)
{
	CBillboard* pBillboard = new CBillboard;
	pBillboard->SetPos(pos);

	pBillboard->Init();

	return pBillboard;
}