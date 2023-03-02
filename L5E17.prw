#INCLUDE 'TOTVS.CH'

User Function L5E17()

    Local cTitle := "Brincando com Arrays"
    Private oJanela, oExibe1, cExibe1 := ""
    Private oExibe2, cExibe2 := ""
    Private oGroup1, oGroup2, oGroup3
    Private oLimpa
    Private aClone := {}
    Private nJanLarg := 500
    Private nJanAlt  := 465

    DEFINE MSDIALOG oJanela TITLE cTitle FROM 000,000 TO nJanAlt, nJanLarg PIXEL

        // Grupo de Exibi��o1 - Array modificado
        // LIN, COL       
        @ 003, 003 GROUP oGroup1 TO 050, 247 OF oJanela PIXEL
            @ 005, 005 MSGET oExibe1 VAR cExibe1 SIZE 241, 040 of oJanela PIXEL
            oExibe1:lActive := .F.
            oExibe1:SetCSS("QLineEdit{text-align: center; font: bold 12px; font-family:Arial; align-items: center; margin: center;}")

        // Grupo de Exibi��o 2 - Array sem altera��o
        @ 053, 003 GROUP oGroup2 TO 070, 247 OF oJanela  PIXEL
            @ 055, 005 MSGET oExibe2 VAR cExibe2  SIZE 241, 010 of oJanela PIXEL
            oExibe2:lActive := .F.
            oExibe2:setCSS("QLineEdit{text-align: center; align-items: center; width:600px; height:180px; margin:center; font: bold 12px; font-family:Arial;}")

        //Grupo de Bot�es
        @ 073, 003 GROUP oGroup3 TO 232, 247 OF oJanela PIXEL

            @ 075, 005 BUTTON "Preencher Array" SIZE 120, 25 OF oJanela Action (Popula())       PIXEL
            @ 075, 125 BUTTON "Exibir Array"    SIZE 120, 25 OF oJanela Action (Exibir())       PIXEL
            
            @ 100, 005 BUTTON "aSort"           SIZE 120, 25 OF oJanela Action (Ordena1())      PIXEL
            @ 100, 125 BUTTON "DeSort"          SIZE 120, 25 OF oJanela Action (DeSort())       PIXEL

            @ 125, 005 BUTTON "Pesquisa"        SIZE 120, 25 OF oJanela Action (ArrPesq())      PIXEL
            @ 125, 125 BUTTON "Embaralhar"      SIZE 120, 25 OF oJanela Action (EmbArray())     PIXEL

            @ 150, 005 BUTTON "M�dia dos Valores" SIZE 120, 25 OF oJanela Action (MediArray())  PIXEL
            @ 150, 125 BUTTON "Maior/Menor"       SIZE 120, 25 OF oJanela Action (MaiMen())     PIXEL

            @ 175, 005 BUTTON "Somat�ria"        SIZE 120, 25 OF oJanela Action (SomArray())    PIXEL
            @ 175, 125 BUTTON "Repeti��es"       SIZE 120, 25 OF oJanela Action (Repete())      PIXEL

            @ 200, 005 BUTTON oButton PROMPT "Limpar Array"     SIZE 240, 30 OF oJanela Action (Limpa())       PIXEL
            oButton:SetCSS("background-color: qlineargradient(x1: 0, y1: 0, x2: 0, y2: 1, stop: 0 #dadbde, stop: 1 #f6f7fa); font: bold 12px;")
            
    ACTIVATE MSDIALOG oJanela CENTERED
Return 

Static Function Popula()
    local aArray    := {}
    local aOpcao    := {"Autom�tico", "Manual"}
    local nAsc      := 0
    local cNumero   := ""
    local nOpcao    := 0
    local nCount    := 0
    local nCount2   := 0
    local nValida   := 0

    nOpcao := Aviso("Preenchimento de Array", "Qual a forma de preenchimento do array?", aOpcao, 1)

    if nOpcao == 1
        For nCount := 1 to 8
            cNumero := Randomize(1, 50)
            aAdd(aArray, cNumero)
        Next

        cExibe2 := "Array original: " + ArrTokStr(aArray, ", ") + "."
        aClone := aClone(aArray)
        oExibe2:Refresh()
        Return

    else
        For nCount := 1 to 8
            cNumero := FwinputBox("Digite um n�mero para a posi��o " + cvaltochar(nCount) + ":", cNumero)

            For nCount2 := 1 to len(cNumero)
                nASC := ASC(Substr(cNumero, nCount2))

                if (nASC < 48 .or. nASC > 57) .and. nASC != 45 .and. nASC != 46
                    nValida++
                endif 
            Next

            if nValida > 0 .or. cNumero == ""
                MsgStop("Entrada inv�lida. Precisa ser num�rico")
                cNumero := ""
                nValida := 0
                nCount--
            else
                aAdd(aArray, val(cNumero))
                cNumero := ""
            endif
        next

        cExibe2 := "Array original: " + ArrTokStr(aArray, ", ") + "."
        aClone := aClone(aArray)
        oExibe2:Refresh()
        Return
    endif

Return

Static Function Exibir()
    if len(aClone) < 1
        cExibe2:= "O array est� vazio!"
        oExibe1:Refresh()
    else
        FwAlertInfo("O array j� est� na tela, mas... J� que quer ver ele separadamente, aqui est�!" + CRLF +;
                    ArrTokStr(aClone, ", ") + ".", "Exibi��o de Array")
    endif
Return

Static Function Limpa()
    aArray := {}
    aClone := {}

    cExibe1:= ""
    oExibe1:Refresh()

    cExibe2 := "Array limpo!"
    oExibe2:Refresh()
Return

Static Function Ordena1()
    if len(aClone) < 1
        cExibe2:= "O array est� vazio!"
        oExibe2:Refresh()
    else
        aSort(aClone)
        cExibe1 := "Array ordenado: " + ArrTokStr(aClone, ", ") + "."
        oExibe1:Refresh()
    endif
Return

Static Function DeSort()
    local nCount  := 0
    local aInvert := {}

    if len(aClone) < 1
        cExibe2:= "O array est� vazio!"
        oExibe2:Refresh()
    else
        aSort(aClone)
        For nCount := len(aClone) to 1 step -1
            aAdd(aInvert, aClone[nCount])
            cExibe1 := "Array Descrescente: " + ArrTokStr(aInvert, ", ") + "."
            oExibe1:Refresh()
        Next
    endif

Return

Static Function ArrPesq()
    local cUser     := ""
    Local nPesquisa := 0
    local nPos      := 0
    local nCount    := 0
    local nASC      := 0
    local nValida   := 0
    local lValida := .t.

    if len(aClone) < 1
        cExibe2:= "O array est� vazio!"
        oExibe2:Refresh()
    else

        While lValida
            cUser := FwInputBox("Digite o n�mero que deseja pesquisar: ", cUser)
            nPesquisa := val(cUser)

            For nCount := 1 to len(cUser)
                nASC := ASC(Substr(cUser, nCount))

                if (nASC < 48 .or. nASC > 57) .and. nASC != 45 .and. nASC != 46
                    nValida++
                endif 
            Next

            if nValida > 0 .or. cUser == ""
                MsgStop("Entrada inv�lida. Precisa ser num�rico")
                cUser := ""
                nValida := 0
                loop
            else
                nPos := ASCAN(aClone, nPesquisa)
                lValida := .f.
            endif

        end while

        if nPos > 0
            cExibe1 := "O n�mero " + cUser + " est� na posi��o " + cvaltochar(nPos) + " do array."
            oExibe1:Refresh()
        else
            cExibe1 := "A pesquisa n�o retornou resultados."
            oExibe1:Refresh()
        endif
    endif
Return

Static Function EmbArray()
    Local nCount   := 0
    Local nPosRan  := 0 // Posi��o aleat�ria
    Local nPosicao := 0 // Pesquisa de posi��o
    Local aPosicao := {} 
    Local aAux     := {}

    if len(aClone) < 1
        cExibe2:= "O array est� vazio!"
        oExibe2:Refresh()
    else

        For nCount := 1 to 8
            nPosRan := RANDOMIZE(1, 9)

            nPosicao := aScan(aPosicao, nPosRan)

            if nPosicao == 0
                aadd(aPosicao, nPosRan)
                aadd(aAux, aClone[nPosRan])
            else
                nCount--
            endif
        Next

        cExibe1 := "Array Embaralhado: " + ArrTokStr(aAux, ", ") + "."
        oExibe1:Refresh()

    endif
Return

Static Function MediArray()
    local nCount := 0
    local nSoma  := 0
    local nMedia := 0

    For nCount := 1 to len(aClone)
        nSoma += aClone[nCount]
    Next

    nMedia := nSoma / len(aClone)

    cExibe1 := "A m�dia dos valores do array � de " + cvaltochar(noround(nMedia, 1)) + "."
    oExibe1:Refresh()
Return

Static Function MaiMen()
    Local nMax := 0
    Local nMin := 0

    if len(aClone) < 1
        cExibe2:= "O array est� vazio!"
        oExibe2:Refresh()
    else
        aSort(aClone)

        nMax := aTail(aClone)
        nMin := aClone[1]

        cExibe1 := "Maior valor: " + cvaltochar(nMax) + ", Menor valor: " + cvaltochar(nMin) + "."
        oExibe1:Refresh()
    endif

Return

Static Function SomArray()
    local nCount := 0
    local nSoma  := 0

    For nCount := 1 to len(aClone)
        nSoma += aClone[nCount]
    Next

    cExibe1 := "A soma do array completo � " + cvaltochar(nsoma) + "."
    oExibe1:Refresh()

Return

Static Function Repete()
    local nCount   := 0
    local nCount2  := 0
    local cRepete  := ""


    for nCount := 1 to len(aClone)
        for nCount2 := (nCount + 1) to len(aClone)

            if aClone[nCount] == aClone[nCount2]
                cRepete += CRLF + 'O n�mero ' + cvaltochar(aClone[nCount]) + ' se encontra nas posi��es ' + ALLTRIM(STR(nCount)) + ' e '+ ALLTRIM(STR(nCount2))
            endif

        next
    next

    FwAlertInfo(cRepete, "Repeti��es")

Return 
