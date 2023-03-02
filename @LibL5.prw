#INCLUDE "TOTVS.CH"

// Exibe o array concatenando o mesmo em uma variável de texto.
User Function Exibe1(aParam)
    local cExibeRev := ""
    local nCounter  := 0

    For nCounter := len(aParam) to 1 step -1
        if nCounter > 1
            cExibeRev += "{" + aParam[nCounter] + "}, "
        else
            cExibeRev += "{" + aParam[nCounter] + "}. "
        endif
    Next

    FwAlertInfo(cExibeRev, "Array invertido de modo concatenado.")

Return

// Exibe o Array adicionando-o em outro array de modo invertido e através da função ArrToKStr().
User Function Exibe2(aParam)
    local nCounter2 := 0
    local aReverso  := {}

    For nCounter2 := len(aParam) to 1 step -1
        aAdd(aReverso, aParam[nCounter2])
    Next

    FwAlertInfo(ArrToKStr(aReverso, ", ") + ".", "Array invertido em outro array.")
Return

// Faz a exibição de arrays numéricos com uma variável de texto.
User Function ExibeNum(aParam)
    local cExibeRev := ""
    local nCounter  := 0

    For nCounter := 1 to len(aParam)
        if nCounter < len(aParam)
            cExibeRev += "{" + cvaltochar(aParam[nCounter]) + "}, "
        else
            cExibeRev += "{" + cvaltochar(aParam[nCounter]) + "}. "
        endif
    Next

    FwAlertInfo(cExibeRev, "Array exibido de modo concatenado.")

Return

