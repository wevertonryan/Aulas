Algoritmo "Dardos"

Var
   n : vetor [1..3] de real
   i: inteiro
Inicio
   escreval("Digite as três distancias:")
   para i de 1 até 3 faca
      leia(n[i])
      se(n[i] >= n[1])então
         n[1] <- n[i]
      fimse
   fimpara

   escreva("Maior distancia é:", n[1])
Fimalgoritmo