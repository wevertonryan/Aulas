Algoritmo "URNA_ELETRONICA_2"

procedimento proc_votar
inicio
   escreval("VOTAR")
   escreval("")
   escreva("Número do Candidato:")
   leia(resp)
   se (resp > 0) e (resp <= 5) entao
   senao
      voto <- 0
   fimse
fimprocedimento

procedimento proc_candidatos
var
   i : inteiro
inicio
   escreval("CANDIDATOS")
   escreval("")
   para i de 1 ate 5 faca
      escreval("[", candidato.numero[i]:1, "]", candidato.nome[i])
   fimpara
   leia(resp)
fimprocedimento

tipo cand_info = registro
   nome : caracter
   numero : inteiro
   votos : inteiro
fimregistro

Var
   resp, voto : inteiro
   candidato : vetor[0..6] de cand_info
Inicio
   candidato.nome[0] <- "Nulo"
   candidato.numero[0] <- 0

   candidato.nome[1] <- "Bolsonaro de Calcinha"
   candidato.numero[1] <- 1

   candidato.nome[2] <- "Lula Anão Bombado"
   candidato.numero[2] <- 2

   candidato.nome[3] <- "THE ROCK"
   candidato.numero[3] <- 3

   candidato.nome[4] <- "Tiago"
   candidato.numero[4] <- 4

   candidato.nome[5] <- "Thiago com H"
   candidato.numero[5] <- 5

   candidato.nome[6] <- "Shrek"
   candidato.numero[6] <- 6

   enquanto Verdadeiro faca
      escreval("URNA_ELETRONICA_2")
      escreval("[1]Votar")
      escreval("[2]Candidatos")
      leia(resp)
      
      escolha resp
      caso 1
           proc_votar
      caso 2
           proc_candidatos
      fimescolha
   fimenquanto
Fimalgoritmo