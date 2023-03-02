/*/ Ler dois arrays: A com 10 elementos e B com 15
elementos. Construir um array C, sendo este, a
junção dos outros dois arrays. Desta forma, C
deverá ter a capacidade de armazenar 25
elementos. Apresentar o array C. /*/

#INCLUDE 'TOTVS.CH'

User Function L5E10()
    Local aArray1   := {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
    Local aArray2   := {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}
    Local aArray3   := {}
    Local nCount    := 0

    For nCount := 1 to len(aArray1)
        aAdd(aArray3, aArray1[nCount])
    Next

    For nCount := 1 to len(aArray2)
        aAdd(aArray3, aArray2[nCount])
    Next

    FwAlertInfo(ArrToKStr(aArray3, ", ") + ".", "Array exibido com função.")

Return 
