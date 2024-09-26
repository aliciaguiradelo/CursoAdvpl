#include "protheus.ch"
#include "TbiConn.ch"
#include "TbiCode.ch"

User function MANIPULACAO()
Private cprodut := "00001"

RpcSetType(3)
PREPARE ENVIRONMENT EMPRESA "99" FILIAL "01" MODULO "FAT"

dbSelectArea("SZ1")

RecLock("SZ1",.T.)
Z1_FILIAL := xFilial()
Z1_CLIENT := "000001"
Z1_LOJA   := "01"
Z1_PRODUT := "000001"
Z1_UM     := "PC"
Z1_UMCLI  := "CX"
Z1_TIPO   := "M"
Z1_FATOR  := 1
MsUnLock()


dbSelectArea("SA1")
dbSetOrder(1)
if dbSeek(xFilial()+Z1_CLIENT+Z1_LOJA)
    MsgInfo('Nome: ' + SA1->A1_NOME)
else
    MsgInfo("Registro não encontrado")
EndIf


dbSelectArea("SB1")
dbSetOrder(1)
if dbSeek(xFilial()+cprodut)
    MsgInfo('Produto: ' + Alltrim(SB1->B1_DESC))
else
    MsgInfo("Registro não encontrado")
EndIf
dbSelectArea("SB1")


RESET ENVIRONMENT
Return
