/*/ Fazer um programa que dado um número de 1 até 7, 
apresente o nome do dia da semana correspondente. 
Considere 1 como Domingo. /*/

#INCLUDE 'TOTVS.CH'

User Function L5E1()
    local aSemana   := {"Domingo", "Segunda-Feira", "Terça-Feira", "Quarta-Feira", "Quinta-Feira", "Sexta-Feira", "Sábado"}
    local nUser     := 0
    local lPrograma := .t.

    While lPrograma

        nUser := val(fwinputbox("Digite um número entre 1 e 7!"))

        if (nUser == 0)
            lPrograma := MsgYesNo("Número zero digitado ou entrada em branco/nula. Deseja sair?")

                IF lPrograma == .T.
                    Return
                else
                    loop
                endif

        elseif (nUser < 1) .or. (nUser > 7)
            MSGSTOP( "Entrada inválida!", "Atenção!" )
            loop
        endif

        lPrograma := MsgYesNo("O dia da semana selecionado foi " + cvaltochar(aSemana[nUser] + ". Deseja verificar outro?"), aSemana[nUser])
    End while

Return 
