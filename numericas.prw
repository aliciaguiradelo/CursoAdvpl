#include "protheus.ch"

User Function Numericas()

//Criar as vari�veis num�ricas: nNumero, nResultado, cTexto e aArray
Local nNumero
Local nResultado
Local cTexto
Local aArray

//Atribua o valor 13 a vari�vel nNumero e divida por 2, gurdando o resultado na vari�vel nResultado 
//Deixe o resultado obtido com 2 casas decimais apenas
nNumero := 13
nResultado := NoRound(nNumero/2, 2) 

//fa�a uma valida��o para verificar o qual o Tipo de cada vari�vel e exiba em uma mensagem ALERT
alert(ValType( nNumero))
alert(ValType( nResultado))
