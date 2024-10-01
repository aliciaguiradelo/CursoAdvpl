#include 'Protheus.ch'
#include "TbiConn.ch"
#include "TbiCode.ch"


User Function ParametroAlicia()
Local dParam 

PREPARE ENVIRONMENT EMPRESA "99" FILIAL "01" MODULO "COM"


dParam := GetMV("MV_ULMES")

dParam += 90

PutMV("MV_ULMES",dParam)



MsgInfo("Conteúdo do MV_ULMES é ",Dtoc(GetMV("MV_ULMES"))) 

RESET ENVIRONMENT
Return
