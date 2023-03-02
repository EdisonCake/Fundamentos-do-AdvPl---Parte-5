/*/ 14 – Carregar um array com 12 caracteres gerados
aleatoriamente (randômicos). Serão válidos
apenas caracteres que representem letras
minúsculas (de “a” até “z”). A carga do array
deverá ser feita através de uma função estática
que é chamada automaticamente no programa
principal. Os caracteres NÃO podem se repetir. No
final, exibir o vetor gerado.
Obs: A exibição deverá ser feita função estática. /*/

#INCLUDE 'TOTVS.CH'

User Function L5E14()
    Local aArray  := {}
    Local cLetra  := ""
    Local nCount  := 0
    Local nExiste := 0

    For nCount := 1 to 15
        cLetra := CHR(Randomize(97, 122))

        nExiste := aScan(aArray, cLetra)

        if nExiste > 0
            nCount--
        else
            aAdd(aArray, cLetra)
        endif
    Next

    U_Exibe1(aArray)

Return 
