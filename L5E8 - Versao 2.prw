/*/ Fazer um programa que carregue um array de 8
elementos e que inverta a ordem do seu conteúdo.
Apresente no final o array invertido.
Obs: Usar apenas um array. /*/

User Function L5E82()
    local aArray    := {1, 2, 3, 4, 5, 6, 7, 8}
    local nCount    := 0
    local nAux      := 0
    local nEnd      := 0

    nEnd := len(aArray)

    For nCount := 1 to int(nEnd / 2)
        nAux := aArray[nCount]
        aArray[nCount] := aArray[nEnd]
        aArray[nEnd] := nAux
        nEnd--
    Next

    FwAlertInfo(ArrToKStr(aArray, ", ") + ".", "Array exibido com função.")

Return 
