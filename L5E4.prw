/*/ Elaborar um programa que popule um array de
10 posi��es com valores pares a partir de 2 at� o
20. No final, exibir o conte�do do array. /*/

#INCLUDE 'TOTVS.CH'

User Function L5E4()
    Local aL5E4     := {}
    Local nCount    := 0

    For nCount := 1 to 20
        if (nCount % 2 = 0)
            aAdd(aL5E4, nCount)
        endif
    Next

    U_ExibeNum(aL5E4) // Array exibido com concatena��o.

    FwAlertInfo(ArrToKStr(aL5E4, ", ") + ".", "Array exibido com fun��o.")
Return 
