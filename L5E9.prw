/*/ Ler 8 elementos em um array A tipo vetor.
Construir um array B de mesma dimensão onde cada
elemento é o triplo do elemento correspondente
do array A. /*/

#INCLUDE 'TOTVS.CH'
#DEFINE nMulti 3

User Function L5E9()
    local aArray := {1, 2, 3, 4, 5, 6, 7, 8}
    local aBrray := {}
    local nCount := 0

    For nCount := 1 to 8
        aAdd(aBrray, (aArray[nCount] * nMulti))
    Next

    FwAlertInfo(ArrToKStr(aBrray, ", ") + ".", "Array exibido com função.")

Return 
