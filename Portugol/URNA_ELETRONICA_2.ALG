Algoritmo "URNA_ELETRONICA_2"

//procedimentos
procedimento info(x : inteiro)
inicio
   escolha x
   caso 0
      titulo <- "URNA_ELETRONICA_2"
      opcao[1] <- "Votar"
      opcao[2] <- "Candidatos"
      opcao[3] <- "Relatorio"
      opcao_total <- 3
   caso 1
      titulo <- "VOTAR"
   caso 2
      titulo <- "CANDIDATOS"
   caso 3
      titulo <- "RELATORIO"
   fimescolha
fimprocedimento

procedimento proc_navegacao
inicio
   para i de 1 ate opcao_total faca
      escreval("[", i:1, "]",opcao[i])
   fimpara
fimprocedimento

procedimento proc_votar
inicio
   escreval("Escreva o número do Candidato: ")
fimprocedimento

procedimento proc_votar_1
inicio
   escreval("Votação:")
   escreval("Candidato: ", candidato.nome[voto])
   escreval("Número: ", candidato.numero[voto])
   escreval("")
   escreval("[1]CONFIRMAR / [2]CORRIGIR / [3]CANCELAR")
fimprocedimento

procedimento proc_candidatos
inicio
   para i de 1 ate 5 faca
      escreval("Candidato: ", candidato.nome[i])
      escreval(" - Numero: ", candidato.numero[i])
      escreval("")
   fimpara
      escreval("Candidato: ", candidato.nome[i+1])
      escreval(" - Numero: ", candidato.numero[i+1])
fimprocedimento

procedimento proc_relatorio
inicio
   para i de 2 ate 7 faca
      se candidato.votos[i] > 0 entao
         escreval(candidato.nome[i], ": ", candidato.votos[i], " votos | ", 100*(candidato.votos[i]/votos_total), "%")
      fimse
   fimpara
   se (votos_total - (candidato.votos[0] + candidato.votos[1])) > 0 entao
      escreval("")
   fimse
   escreval("Votos Nulo: ", candidato.votos[0])
   escreval("Votos Brancos: ", candidato.votos[1])
   escreval("Votos Totais: ", votos_total)
fimprocedimento

procedimento imprimir(x : inteiro)
inicio
   escolha x
   caso 0
      proc_navegacao
   caso 1
      escolha sub
      caso 0
         proc_votar
      caso 1
         proc_votar_1
      fimescolha
   caso 2
      proc_candidatos
   caso 3
      proc_relatorio
   fimescolha
fimprocedimento

procedimento resposta(x : inteiro)
var
   resp : inteiro
   carc : caracter
inicio
   escolha x
   caso 0, 2, 3
      leia(resp)
   caso 1
      escolha sub
      caso 0
         leia(carc)
      caso 1
         leia(resp)
      fimescolha
   fimescolha
   escolha x
   caso 0
      se (resp > 0) e (resp <= opcao_total) entao
         nav <- resp
      fimse
   caso 1
      escolha sub
      caso 0
         para i de 1 ate 7 faca
            se candidato.numero[i] = carc entao
               voto <- i
               sub <- 1
               interrompa
            senao
               voto <- 0
               sub <- 1
            fimse
         fimpara
      caso 1
         escolha resp
         caso 1
            candidato.votos[voto] <- candidato.votos[voto] + 1
            votos_total <- votos_total + 1
            nav <- 0
            sub <- 0
            v <- 1
         caso 2
            sub <- 0
         caso 3
            nav <- 0
            sub <- 0
            v <- 2
         fimescolha
      fimescolha
   caso 2
      nav <- 0
   caso 3
      nav <- 0
   fimescolha
fimprocedimento

procedimento mensagens
inicio
   se v > 0 entao
      escreval("")
      escolha v
      caso 1
         escreval("*VOTO CONFIRMADO!!!")
      caso 2
         escreval("*VOTO CANCELADO!!!")
      fimescolha
   fimse
   v <- 0
fimprocedimento

procedimento completar(x : inteiro)
inicio
   escreval("")
   escreva("===========")
   para i de 1 ate x faca
      escreva("=")
   fimpara
   escreval("===========")
fimprocedimento


//Variaveis
tipo tipos = registro
   nome : caracter
   numero : caracter
   votos : inteiro

   num : inteiro
   car : caracter
fimregistro

Var
   nav, sub, opcao_total, i, voto, votos_total, v : inteiro
   titulo : caracter
   resp : tipos
   candidato : vetor[0..7] de tipos
   opcao : vetor[1..5] de caracter

   //codigo
Inicio
   nav <- 0
   sub <- 0

   candidato.nome[0] <- "Nulo"
   candidato.numero[0] <- "0"

   candidato.nome[1] <- "Branco"
   candidato.numero[1] <- "1"

   candidato.nome[2] <- "Bolsonaro de Calcinha"
   candidato.numero[2] <- "22"

   candidato.nome[3] <- "Lula Anao Bombado"
   candidato.numero[3] <- "13"

   candidato.nome[4] <- "THE ROCK"
   candidato.numero[4] <- "72"

   candidato.nome[5] <- "Tiago"
   candidato.numero[5] <- "5"

   candidato.nome[6] <- "Thiago com H"
   candidato.numero[6] <- "6"

   candidato.nome[7] <- "Shrek"
   candidato.numero[7] <- "88224646ba"

   enquanto Verdadeiro faca
      limpatela
      info(nav)
      escreval("==========[",titulo,"]==========")
      escreval("")
      imprimir(nav)
      mensagens
      completar(compr(titulo))
      resposta(nav)
   fimenquanto
Fimalgoritmo