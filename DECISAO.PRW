#Include 'Protheus.ch'

User Function TesteDecisao()
	Local nNumero := NCOUNT := 0
	Private lContinua := .T.
	Private aArray1 := {0,0,0}
	Private aArray2 := {}
	Private aArray3 := Array(3,3)


	WHILE lContinua

		WHILE nCount <10

			aArray1[1] := nCount
			aArray1[2] := nCount/2
			aArray1[3] := nCount**2

			nCount ++

		END

		lContinua := .F.

	END

	For nNumero := 1 to 10

		AAdd(aArray2,{nNumero})

		If nNumero == 7
			Exit

		EndIf

	Next

	nTamanho := Len(aArray2)-1
	nPos := AScan(aArray2,{ |x| x[1] == 4})
	aDel(aArray2, nPos)
	ASize(aArray2,nTamanho)


Return
