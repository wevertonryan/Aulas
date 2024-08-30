Algoritmo "Parcela de Emprestimo"

Var
   idade : inteiro
   renda, parc, parc_max, seguro: real


Inicio
   escreval("Bem Vindo ao Clube de Agiotagem Jahu")
   escreval("Antes de mais nada precisamos de algumas informções suas.")
   escreval("Quantos anos você tem?")
   leia(idade)

   se (idade < 18) então
      escreval("Cai fora, tú é jovem demais para estar se envolvendo com agiotagem!")
      fimalgoritmo
   fimse
   se (idade > 120) então
      escreval("Oloko, como tu ainda tá vivo?!")
   fimse
   
   
   se (idade <= 29) então
      seguro <- 0.05
   fimse
   se (idade <= 44) então
      seguro <- 0.07
   fimse
   se (idade <= 60) então
      seguro <- 0.1
   fimse
   se (idade > 60) então
      seguro <- 0.15
   fimse

   escreval("Qual é a média de sua renda mensal?")
   escreva("R$")
   leia(renda)
   
   se (renda < 1500) então
      escreval("Meu amigo, você é muito pobre, suma da minha frente")
      fimalgoritmo
   fimse
   se (renda >= 1500) então
         parc_max <- renda * 0.15
   fimse
   se (renda >= 2000) então
         parc_max <- renda * 0.2
   fimse
   se (renda >= 2500) então
         parc_max <- renda * 0.3
   fimse
   
   escreval("Ótimo, e quanto é o valor do emprestimo que você deseja receber?")
   enquanto 1=1 faca
      escreva("R$")
      leia(parc)
      se (parc_max >= parc) então
         escreval("Sua parcela de R$", parc, " foi aprovada!")
         escreval("Garantimos R$", parc*seguro, " de seguro!")
         escreval("Total: R$",  parc+(parc*seguro))
         fimalgoritmo
      senão
         escreval("Você pediu por um valor incoerente do que é correspondente a sua renda")
         escreval("insira um valor mais baixo")
      fimse
   fimenquanto
Fimalgoritmo