#include 'Protheus.ch'
#include "TbiConn.ch"
#include "TbiCode.ch"


User Function ParametroAlicia()
Local dParam 

PREPARE ENVIRONMENT EMPRESA "99" FILIAL "01" MODULO "COM"


dParam := GetMV("MV_ULMES")

dParam += 90

PutMV("MV_ULMES",dParam)



MsgInfo("Conte�do do MV_ULMES � ",Dtoc(GetMV("MV_ULMES"))) 

RESET ENVIRONMENT
Return
