Algoritmo "Parcela de Emprestimo"

Var
   idade : inteiro
   renda, parc, parc_max, seguro: real


Inicio
   escreval("Bem Vindo ao Clube de Agiotagem Jahu")
   escreval("Antes de mais nada precisamos de algumas inform��es suas.")
   escreval("Quantos anos voc� tem?")
   leia(idade)

   se (idade < 18) ent�o
      escreval("Cai fora, t� � jovem demais para estar se envolvendo com agiotagem!")
      fimalgoritmo
   fimse
   se (idade > 120) ent�o
      escreval("Oloko, como tu ainda t� vivo?!")
   fimse
   
   
   se (idade <= 29) ent�o
      seguro <- 0.05
   fimse
   se (idade <= 44) ent�o
      seguro <- 0.07
   fimse
   se (idade <= 60) ent�o
      seguro <- 0.1
   fimse
   se (idade > 60) ent�o
      seguro <- 0.15
   fimse

   escreval("Qual � a m�dia de sua renda mensal?")
   escreva("R$")
   leia(renda)
   
   se (renda < 1500) ent�o
      escreval("Meu amigo, voc� � muito pobre, suma da minha frente")
      fimalgoritmo
   fimse
   se (renda >= 1500) ent�o
         parc_max <- renda * 0.15
   fimse
   se (renda >= 2000) ent�o
         parc_max <- renda * 0.2
   fimse
   se (renda >= 2500) ent�o
         parc_max <- renda * 0.3
   fimse
   
   escreval("�timo, e quanto � o valor do emprestimo que voc� deseja receber?")
   enquanto 1=1 faca
      escreva("R$")
      leia(parc)
      se (parc_max >= parc) ent�o
         escreval("Sua parcela de R$", parc, " foi aprovada!")
         escreval("Garantimos R$", parc*seguro, " de seguro!")
         escreval("Total: R$",  parc+(parc*seguro))
         fimalgoritmo
      sen�o
         escreval("Voc� pediu por um valor incoerente do que � correspondente a sua renda")
         escreval("insira um valor mais baixo")
      fimse
   fimenquanto
Fimalgoritmo