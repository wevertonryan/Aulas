Algoritmo "Nota_Aluno"

Var
   nome_aluno : vetor[1..7] de caracter
   nota_aluno : vetor[1..8,1..3] de real
   alunos, sala, i, j : inteiro
Inicio
      alunos <- 7
      sala <- alunos+1
      
      para i de 1 ate alunos faca
           escreval("Qual o nome do ", i, "° Aluno?")
           leia(nome_aluno[i])
           para j de 1 ate 2 faca
                escreva(j, "° nota do aluno ", nome_aluno[i], ":")
                leia(nota_aluno[i, j])
                nota_aluno[sala, j] <- nota_aluno[sala, j] + nota_aluno[i, j]
           fimpara
           nota_aluno[i,3] <- (nota_aluno[i,1] + nota_aluno[i, 2])/2
           limpatela
      fimpara
      
      escreval("NOTA DOS ALUNOS:")
      para i de 1 ate alunos faca
           escreval("Aluno ", nome_aluno[i], ":")
           escreval("- P1: ", nota_aluno[i, 1])
           escreval("- P2: ", nota_aluno[i, 2])
           escreval("- Média: ", nota_aluno[i, 3])
           escreval("")
           nota_aluno[sala, 3] <- nota_aluno[sala, 3] + nota_aluno[i, 3]
      fimpara
      
      para j de 1 ate 3 faca
           nota_aluno[sala, j] <- nota_aluno[sala, j]/7
      fimpara
      
      escreval("Media P1 da Sala: ", nota_aluno[sala, 1]:3:2)
      escreval("Media P2 da Sala: ", nota_aluno[sala, 2]:3:2)
      escreval("Media total da Sala: ", nota_aluno[sala, 3]:3:2)
Fimalgoritmo