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
            escreva(j, "� Nota do aluno", i, ": ")
            leia(nota[i,j])
            
            se (nota[i,j] < 0) ou (nota[i,j] > 10) ent�o
               limpatela
               escreval("Resposta inv�lida")
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
        escreval("M�dia aluno ", i, ": ", media)
   fimpara
Fimalgoritmo