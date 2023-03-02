/*/ Fazer um programa que carregue um array de 8
elementos e que inverta a ordem do seu conteúdo.
Apresente no final o array invertido.
Obs: Usar apenas um array. /*/

User Function L5E8()
    local aArray := {1, 2, 3, 4, 5, 6, 7, 8}
    local nCount := 0

    For nCount := 8 to 1 step -1
        aAdd(aArray, nCount)
    Next

    For nCount := 1 to 8
        aDel(aArray, 1)
    Next

    aSize(aArray, 8)

    FwAlertInfo(ArrToKStr(aArray, ", ") + ".", "Array exibido com função.")

Return 
