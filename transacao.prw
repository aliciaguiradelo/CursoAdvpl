#INCLUDE "protheus.ch"
#include "TbiConn.ch"
#include "TbiCode.ch"

User Function Transacao()
	Local cCliente := "000001"
	Local cLoja  := "01"
	Local cProdut := "000001"

	RpcSetType(3)
	PREPARE ENVIRONMENT EMPRESA "99" FILIAL "01" MODULO "FAT"


	dBselectArea("SZ1")

	BEGIN TRANSACTION
		RecLock("SZ1",.T.)
		Z1_FILIAL := xFilial()
		Z1_CLIENT := GetSx8Num("SA1","A1_COD")
		Z1_LOJA   := cLoja
		Z1_PRODUT := cProdut
		Z1_UM     := "PC"
		Z1_UMCLI  := "CX"
		Z1_TIPO   := "M"
		Z1_FATOR  := 1
		MsUnlock()

	END TRANSACTION

	BEGINTRAN()
	RecLock("SZ1",.T.)
	Z1_FILIAL := xFilial()
	Z1_CLIENT := cCliente
	Z1_LOJA   := cLoja
	Z1_PRODUT := cProdut
	Z1_UM     := "PC"
	Z1_UMCLI  := "CX"
	Z1_TIPO   := "M"
	Z1_FATOR  := 1
	MsUnlock()
	DISARMTRANSACTION()

	ENDTRAN()


	MsUnlockAll()

	RESET ENVIRONMENT


Return

