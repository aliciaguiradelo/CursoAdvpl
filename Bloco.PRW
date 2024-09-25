#include "Protheus.ch" 

User Function blocos()
Local nItem := 450
Local nResultado := 0
Local bBloco1 := {|H| E:=15, Z:= 30, R:= (E*Z)-H}

nResultado := Eval (bBloco1, nItem)

Return
