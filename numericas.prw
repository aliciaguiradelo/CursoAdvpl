#include "protheus.ch"

User Function Numericas()

//Criar as variáveis numéricas: nNumero, nResultado, cTexto e aArray
Local nNumero
Local nResultado
Local cTexto
Local aArray

//Atribua o valor 13 a variável nNumero e divida por 2, gurdando o resultado na variável nResultado 
//Deixe o resultado obtido com 2 casas decimais apenas
nNumero := 13
nResultado := NoRound(nNumero/2, 2) 

//faça uma validação para verificar o qual o Tipo de cada variável e exiba em uma mensagem ALERT
alert(ValType( nNumero))
alert(ValType( nResultado))
