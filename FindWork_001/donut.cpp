//===========================================================================================================================================================
// 
// メーター針の丸の部分 [donut.cpp]
// Author : souma umeda
// 
//===========================================================================================================================================================
#include "donut.h"
#include "manager.h"
#include "meterneedle.h"

//========================================================================================================================
// コンストラクタ
//========================================================================================================================
CDonut::CDonut()
{
}

//========================================================================================================================
// デストラクタ
//========================================================================================================================
CDonut::~CDonut()
{
}

//========================================================================================================================
// 初期設定
//========================================================================================================================
HRESULT CDonut::Init()
{
	int Idx = 0;
	Idx = CManager::GetTexture()->Regist("data\\TEXTURE\\donut_002.png");
	BindTexture(CManager::GetTexture()->GetAddress(Idx));

	SetSize({ 10.0f,10.0f,0.0f });

	CMeterNeedle::Create(GetPos());

	CObject2D::Init();
	return S_OK;
}

//========================================================================================================================
// 終了処理
//========================================================================================================================
void CDonut::Uninit()
{
	CObject2D::Uninit();
}

//========================================================================================================================
// 描画処理
//========================================================================================================================
void CDonut::Draw()
{
	CObject2D::Draw();
}

//========================================================================================================================
// 生成処理
//========================================================================================================================
CDonut* CDonut::Create(D3DXVECTOR3 Parepos)
{
	CDonut* pDonut = new CDonut;

	D3DXVECTOR3 pos = Parepos;
	pos.y += 50.0f;

	pDonut->SetPos(pos);

	pDonut->Init();

	return pDonut;
}
