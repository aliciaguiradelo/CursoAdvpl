#INCLUDE 'PROTHEUS.CH'


USER FUNCTION xTSTDEBUG(nLoop)
//Declaração de variáveis
Local lContinua   := .T. 
Local aArray      := {}

Default nLoop     := 1

aadd(aArray, "Parabéns, você conseguiu !!! Parabéns , " + LogUserName() + " !!!")
aadd(aArray, "Continue tentando, você vai conseguir!!!")

IF nLoop == 1
    IF xAvalia(lContinua,1,aArray) 
        U_xTSTDEBUG()
    ElSE 
        xAvalia(.F.,0,aArray)     
    ENDIF 
ENDIF

RETURN


STATIC FUNCTION xAvalia(lContinua,nLoop,aArray)
Default lContinua := .F.
Default nLoop := 1
Default aArray := {}

IF nLoop == 1
    MSGINFO(aArray[1])
ElSE
    MSGINFO(aArray[2])
ENDIF

IF !lContinua .AND. nLoop == 1
    nLoop := 0
    lContinua := .F.
ENDIF

RETURN lContinua
