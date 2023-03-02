/*/ Carregar um Array com 50 caracteres gerados
aleatoriamente (rand�micos). Ser�o v�lidos
apenas caracteres que representem letras
mai�sculas (de �A� at� �Z�). A carga do array
dever� ser feita atrav�s de uma fun��o est�tica
que � chamada automaticamente no programa
principal. Obs: Os caracteres podem se repetir. /*/

#INCLUDE 'TOTVS.CH'

User Function L5E13()
    Local aArray        := {}
    Local cLetra        := ""
    Local nCount        := 0

    For nCount := 1 to 50
        cLetra := CHR(Randomize(65, 90))

        aAdd(aArray, cLetra)
    Next

    FwAlertInfo(ArrToKStr(aArray, ", ") + ".", "Array exibido com fun��o.")

Return 
