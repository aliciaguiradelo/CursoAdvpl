#include "Protheus.ch"

//aulas leitura de erro


User Function VerErros()
Local nNumero := ""
Local aArray  := {{0,0,0}}
Local cNumero := 0
Local lTeste := .T.



If Val(nNumero)  >= 0 
    MsgAlert("NUMERO")
ENDIF

If aArray[1,2] == 3
    MsgAlert("ARRAY")
ENDIF

If cNumero >= 0 
    MsgAlert("TEXTO")
ENDIF

If lTeste 
    MsgAlert("BOLEANO")
ENDIF



RETURN
