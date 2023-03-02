/*/ Ler um array A com 10 elementos. Construir um
array B com a mesma dimensão, sendo que cada
elemento de B seja o somatório do primeiro até o
elemento correspondente de A. Apresentar os
elementos do array B. /*/

#INCLUDE 'TOTVS.CH'

User Function L5E11()
    local aArray1 := {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
    local aArray2 := {}
    local nSoma   := 0
    local nCount  := 0

    For nCount := 1 to len(aArray1)
        nSoma += aArray1[nCount]
        aAdd(aArray2, nSoma)
    Next

    FwAlertInfo(ArrToKStr(aArray2, ", ") + ".", "Array exibido com função.")

Return 
