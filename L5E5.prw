/*/ Ler dois arrays (A e B), de 20 elementos cada e
calcular um terceiro (C), onde cada elemento será
a soma dos correspondentes em A e B. Apresentar
o array resultante. /*/

#INCLUDE 'TOTVS.CH'

User Function L5E5()
    local aA        := {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
    local aB        := {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
    local aC        := {}
    local nCount    := 0

    For nCount := 1 to 10
        aAdd(aC, (aA[nCount] + aB[nCount]))
    Next

    U_ExibeNum(aC)
    FwAlertInfo(ArrToKStr(aC, ", ") + ".", "Array exibido com função.")

Return 
