/*/ Elaborar um progama que popule um array de 30 posi��es com valores de 1 at� 30.
No final, exibir o conte�do do array. /*/

#INCLUDE "TOTVS.CH"

User Function L5E3()
    Local nCount    := 0
    Local aL5E3     := {}

    For nCount := 1 to 30
        aAdd(AL5E3, nCount)
    Next

    U_ExibeNum(aL5E3)  // Fun��o de exibi��o de array com concatena��o.

    FwAlertInfo(ArrToKStr(aL5E3, ", ") + ".", "Array exibido com fun��o.")

Return 


