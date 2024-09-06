Algoritmo "Menor_de_Tres"

Var
   n : vetor [1..3] de inteiro
   i: inteiro
Inicio
   para i de 1 até 3 faca
      escreva("Escreva o ", i, "° valor: ")
      leia(n[i])
      se(n[i] <= n[1])então
         n[1] <- n[i]
      fimse
   fimpara
   
   escreva("Menor valor é:", n[1])
Fimalgoritmo