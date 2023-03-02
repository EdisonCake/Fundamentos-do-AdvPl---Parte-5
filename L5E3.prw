/*/ Elaborar um progama que popule um array de 30 posições com valores de 1 até 30.
No final, exibir o conteúdo do array. /*/

#INCLUDE "TOTVS.CH"

User Function L5E3()
    Local nCount    := 0
    Local aL5E3     := {}

    For nCount := 1 to 30
        aAdd(AL5E3, nCount)
    Next

    U_ExibeNum(aL5E3)  // Função de exibição de array com concatenação.

    FwAlertInfo(ArrToKStr(aL5E3, ", ") + ".", "Array exibido com função.")

Return 


