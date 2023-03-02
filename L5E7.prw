/*/ Ler um array A de 15 elementos e a partir dele
construir um array B de mesmo tamanho, sendo o
inverso de A, ou seja, o primeiro elemento de B
dever� receber o �ltimo de A o segundo de B
dever� receber o pen�ltimo de A e assim por
diante. /*/

#INCLUDE 'TOTVS.CH'

User Function L5E7()
    local aArray := {}
    local aBrray := {}
    local nCounter := 0

    For nCounter := 1 to 15
        aAdd(aArray, nCounter)
    Next

    For nCounter := len(aArray) to 1 step -1
        AADD(aBrray, aArray[nCounter])
    Next

    U_ExibeNum(aBrray)
    FwAlertInfo(ArrToKStr(aBrray, ", ") + ".", "Array exibido com fun��o.")

Return 
