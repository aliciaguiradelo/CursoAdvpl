#Include 'Protheus.ch'

User Function Principal()
	Local nNumero := 10
	Private dData := Date()

	nFim := nNumero % 2
	if nFim == 0
		alert('� par')
	elseif nFim == 1
		alert('� impar')
	else
		alert('houve um erro')
	endIf

	if nNumero >= 10.5
		alert('nMunero � maior igual que 10.5')
	elseif nNumero <= 10.5
		alert('nMunero � menor igual que 10.5')
	else
		alert('houve um erro')
	endIf



	Filha()

Return Nil


Static Function Filha()
	Local nNumero := 20
	Private lContinua := .T.
	Public aDados :={1,3,7}

	cTexto:="alterada"

	dData += nNumero

	cPalavra:= "NOVAMENTE"+Space(10)
	cFrase:= cPalavra+cTexto

	if lContinua == .T.
		alert('� verdadeira')
	else
		alert('� falsa')
	endIf

	U_Secundaria()


Return lContinua

User Function Secundaria()
	Local nNumero := 30

	aDados := {0,0,0}

	nResto := nNumero % 4
	cNovaFrase := "SEM ESPACO"-cTexto

	if "ATEU" $ cTexto
		alert('ATEU est� dentro de cTexto, veja: ' + cTexto)
	else
		alert('N�o existe "ATEU" dentro de cTexto')
	endIf

		Return Nil
