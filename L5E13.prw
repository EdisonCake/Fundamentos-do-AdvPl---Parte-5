/*/ Carregar um Array com 50 caracteres gerados
aleatoriamente (randômicos). Serão válidos
apenas caracteres que representem letras
maiúsculas (de “A” até “Z”). A carga do array
deverá ser feita através de uma função estática
que é chamada automaticamente no programa
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

    FwAlertInfo(ArrToKStr(aArray, ", ") + ".", "Array exibido com função.")

Return 
