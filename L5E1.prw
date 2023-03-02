/*/ Fazer um programa que dado um n�mero de 1 at� 7, 
apresente o nome do dia da semana correspondente. 
Considere 1 como Domingo. /*/

#INCLUDE 'TOTVS.CH'

User Function L5E1()
    local aSemana   := {"Domingo", "Segunda-Feira", "Ter�a-Feira", "Quarta-Feira", "Quinta-Feira", "Sexta-Feira", "S�bado"}
    local nUser     := 0
    local lPrograma := .t.

    While lPrograma

        nUser := val(fwinputbox("Digite um n�mero entre 1 e 7!"))

        if (nUser == 0)
            lPrograma := MsgYesNo("N�mero zero digitado ou entrada em branco/nula. Deseja sair?")

                IF lPrograma == .T.
                    Return
                else
                    loop
                endif

        elseif (nUser < 1) .or. (nUser > 7)
            MSGSTOP( "Entrada inv�lida!", "Aten��o!" )
            loop
        endif

        lPrograma := MsgYesNo("O dia da semana selecionado foi " + cvaltochar(aSemana[nUser] + ". Deseja verificar outro?"), aSemana[nUser])
    End while

Return 
