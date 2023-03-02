/*/ Ler 10 elementos de um array e apresentá-los na 
ordem inversa em que foram lidos e armazenados. /*/

#INCLUDE 'TOTVS.CH'

User Function L5E2()
    Local aArray := {}
    Local cUser    := ""
    Local nCount   := 0

    For nCount := 1 to 10
        cUser := FwInputBox("Digite algo a ser guardado na posição " + cvaltochar(nCount) + " do Array:", cUser)

        aAdd(aArray, cUser)
        cUser := ""
    Next

    U_Exibe1(aArray)      // Função para exibir o array de forma concatenada em variável de texto. 
    U_Exibe2(aArray)      // Função para exibir o array posicionando-o invertido em outro e usando a função ArrToKStr()

Return
