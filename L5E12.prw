/*/ Ler um array A com 5 elementos. Construir um
array B com a mesma dimensão, onde cada elemento
do array B deverá ser o valor inverso (sinal
trocado) do elemento correspondente do array A.
Apresentar os elementos do array B. /*/

#INCLUDE "TOTVS.CH"

User Function L5E12()
    Local aArray1   := {1, -2, 3, -4, 5}
    Local aArray2   := {}
    Local nCount    := 0

    For nCount := 1 to len(aArray1)
        aAdd(aArray2, (aArray1[nCount] * (-1)))
    Next

    FwAlertInfo(ArrToKStr(aArray2, ", ") + ".", "Array exibido com função.")

Return 
