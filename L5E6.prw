/*/ Ler dois arrays, A e B de 10 elementos cada e
calcular um array C onde seu primeiro elemento � o
primeiro elemento de A, seu segundo elemento � o
primeiro de B, seu terceiro elemento � o segundo
de A, e assim sucessivamente. Note que o array C
dever� ter 20 elementos. Exibir o conte�do do
array C. /*/

#INCLUDE 'TOTVS.CH'

User Function L5E6()
    local aA        := {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
    local aB        := {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
    local aC        := {}
    local nCount    := 0

    For nCount := 1 to 10
        aAdd(aC, aA[nCount])
        aAdd(aC, aB[nCount])
    Next

    u_ExibeNum(aC)
    FwAlertInfo(ArrToKStr(aC, ", ") + "." + CRLF +;
                        "Tamanho do Array C: " + cvaltochar(len(aC)), "Array exibido com fun��o.")

Return 
