Algoritmo "Operadora"

Var
   minutos : inteiro
Inicio
   escreva("Quantidade de Minutos utilizados: ")
   leia(minutos)
   
   minutos <- minutos - 100
   escreval(minutos)
   se(minutos<0)então
      minutos <- 0
   fimse
   
   escreva("Valor a pagar: R$", 50+(minutos*2),".00")
Fimalgoritmo