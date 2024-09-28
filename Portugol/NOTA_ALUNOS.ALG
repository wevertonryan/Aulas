Algoritmo "Nota_Alunos"

Var
   nota : vetor [1..10,1..2] de real
   i, j, alunos, notas : inteiro
   media, soma : real
Inicio
   alunos <- 10
   notas <- 2
   
   para i de 1 ate alunos faca
      para j de 1 ate notas faca
         repita
            escreva(j, "° Nota do aluno", i, ": ")
            leia(nota[i,j])
            
            se (nota[i,j] < 0) ou (nota[i,j] > 10) então
               limpatela
               escreval("Resposta inválida")
            fimse
         ate (nota[i,j] >= 0) e (nota[i,j] <= 10)
      fimpara
      limpatela
   fimpara
   
   para i de 1 ate alunos faca
        soma <- 0
        para j de 1 ate notas faca
             soma <- soma + nota[i, j]
        fimpara
        
        media <- soma / notas
        escreval("Média aluno ", i, ": ", media)
   fimpara
Fimalgoritmo