/*/ Elaborar um programa que popule um array de
10 posições com valores pares a partir de 2 até o
20. No final, exibir o conteúdo do array. /*/

#INCLUDE 'TOTVS.CH'

User Function L5E4()
    Local aL5E4     := {}
    Local nCount    := 0

    For nCount := 1 to 20
        if (nCount % 2 = 0)
            aAdd(aL5E4, nCount)
        endif
    Next

    U_ExibeNum(aL5E4) // Array exibido com concatenação.

    FwAlertInfo(ArrToKStr(aL5E4, ", ") + ".", "Array exibido com função.")
Return 
