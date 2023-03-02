/*/ Elaborar um programa que permita o usuário
digitar o NOME e 3 NOTAS de 4 alunos, esses dados,
assim como a MÉDIA de cada aluno, devem ser
armazenados em um único array. No final, exibir os
dados (Nome, Notas e Média) de cada aluno. /*/

#INCLUDE 'TOTVS.CH'

#DEFINE Nome_Aluno 1
#DEFINE Nota1 2
#DEFINE Nota2 3
#DEFINE Nota3 4
#DEFINE Media 5

User Function L5E16()
    Local aCadastro[4,5]
    Local cNome     := ""
    Local nNota     := 0
    Local nSoma     := 0
    Local nMedia    := 0
    Local nCount1   := 0
    Local nCount2   := 0
    local cMSG      := ""

    For nCount1 := 1 to 4
        cNome := FwInputBox("Digite o Nome do Aluno: ", cNome)
        aCadastro[nCount1, Nome_Aluno] := cNome

        For nCount2 := 2 to 4
            nNota := val(FwInputBox("Digite a " + cvaltochar(nCount2) + "ª nota do aluno " + cNome + "."))
            aCadastro[nCount1, nCount2] := nNota
            nSoma += nNota
            nNota := ""
        Next nCount2

        nMedia := nSoma / (nCount2 - 1)
        aCadastro[nCount1, Media] := nMedia

        cNome := ""

        cMSG += "Nome: " + aCadastro[nCount1, Nome_Aluno] + CRLF +;
                "Nota 01: " + cvaltochar(aCadastro[nCount1, Nota1]) + CRLF +;
                "Nota 02: " + cvaltochar(aCadastro[nCount1, Nota2]) + CRLF +;
                "Nota 03: " + cvaltochar(aCadastro[nCount1, Nota3]) + CRLF +;
                "Média: " + cvaltochar(aCadastro[nCount1, Media]) + CRLF + CRLF

    Next nCount1

    FwAlertInfo(cMSG)

Return 
