/*/ Ler 10 elementos de um array e apresent�-los na 
ordem inversa em que foram lidos e armazenados. /*/

#INCLUDE 'TOTVS.CH'

User Function L5E2()
    Local aArray := {}
    Local cUser    := ""
    Local nCount   := 0

    For nCount := 1 to 10
        cUser := FwInputBox("Digite algo a ser guardado na posi��o " + cvaltochar(nCount) + " do Array:", cUser)

        aAdd(aArray, cUser)
        cUser := ""
    Next

    U_Exibe1(aArray)      // Fun��o para exibir o array de forma concatenada em vari�vel de texto. 
    U_Exibe2(aArray)      // Fun��o para exibir o array posicionando-o invertido em outro e usando a fun��o ArrToKStr()

Return
