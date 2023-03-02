/*/ 14 � Carregar um array com 12 caracteres gerados
aleatoriamente (rand�micos). Ser�o v�lidos
apenas caracteres que representem letras
min�sculas (de �a� at� �z�). A carga do array
dever� ser feita atrav�s de uma fun��o est�tica
que � chamada automaticamente no programa
principal. Os caracteres N�O podem se repetir. No
final, exibir o vetor gerado.
Obs: A exibi��o dever� ser feita fun��o est�tica. /*/

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
