Algoritmo "Dardos"

Var
   n : vetor [1..3] de real
   i: inteiro
Inicio
   escreval("Digite as tr�s distancias:")
   para i de 1 at� 3 faca
      leia(n[i])
      se(n[i] >= n[1])ent�o
         n[1] <- n[i]
      fimse
   fimpara

   escreva("Maior distancia �:", n[1])
Fimalgoritmo