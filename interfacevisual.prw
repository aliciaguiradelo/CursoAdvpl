#INCLUDE "protheus.ch"
#include "TbiConn.ch"
#include "TbiCode.ch"

User Function IVisual()
//declara��o de vari�veis
Local cTitulo := "Aula MSDIALOG"
Local cTexto  := "CNPJ"
Local cCGC    := Space(13)  
Local nOpca   := 0
Private oDlg

    //Cria o objeto da Interface Visual que vai receber o conte�do (podemos definir tamanho, valida��es, etc)
    DEFINE MSDIALOG oDlg TITLE cTitulo FROM 000,000 TO 080,300 PIXEL
	@ 001,001 TO 040, 150 OF oDlg PIXEL
	@ 010,010 SAY cTexto SIZE 55, 07 OF oDlg PIXEL
	@ 010,050 MSGET cCGC SIZE 55, 11 OF oDlg PIXEL 	PICTURE "@R 99.999.999/9999-99" VALID ACGC(@cCGC)
	DEFINE SBUTTON FROM 010, 120 TYPE 1 ACTION (nOpca := 1,oDlg:End()) ENABLE OF oDlg
	DEFINE SBUTTON FROM 020, 120 TYPE 2 ACTION (nOpca := 2,oDlg:End())ENABLE OF oDlg
	ACTIVATE MSDIALOG oDlg CENTERED

    If nOpca == 2
        RETURN
    ENDIF

    MsgInfo("O CNPJ DIGITADO FOI :"+cCGC )


Return

//**************************************************
Static Function ACGC(cCGC)

If cCGC # "1111111111111"
    MsgAlert("ERRO CGC", "ATENCAO")
    cCGC := "1111111111111"
    oDlg:Refresh()
EndIf    

Return
