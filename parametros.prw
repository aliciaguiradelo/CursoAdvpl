#include 'Protheus.ch'
#include "TbiConn.ch"
#include "TbiCode.ch"

User Function ParametrosTeste()
Local cConteud := ''

PREPARE ENVIRONMENT EMPRESA "99" FILIAL "01" MODULO "COM"

GetMV("MV_CBASEAF")
GetMV("MV_ALICIA")
GetNewPar("MV_CBASEAF", "NOVOATIVO", xFilial())
GetNewPar("MV_ALICIA", "NOVOATIVO", xFilial())
SuperGetMV("MV_CBASEAF",.T., "NOVOATIVO", xFilial())
SuperGetMV("MV_ALICIA",.T., "NOVOATIVO", xFilial())
PutMV("MV_CBASEAF","123ABC")


Return
