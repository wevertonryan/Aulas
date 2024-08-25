Algoritmo "Comissão_Vendas"

Var
   prod : vetor[1..4] de caracter
   vend : vetor[1..4] de real
   coms : vetor[1..4] de real
   i : inteiro
   resp : real
Inicio
      prod[1] <- "Mussarela"
      vend[1] <- 56.2
      coms[1] <- 0.03

      prod[2] <- "Presunto"
      vend[2] <- 78.2
      coms[2] <- 0.05

      prod[3] <- "Peito de Peru"
      vend[3] <- 89.6
      coms[3] <- 0.1

      prod[4] <- "Mortandela"
      vend[4] <- 25.9
      coms[4] <- 0.08

      para i de 1 até 4 faca
           escreva("Quantos kg de ", prod[i], " você deseja?")
           leia(resp)
           vend[i] <- resp * vend[i]
           coms[i] <- vend[i] * coms[i]
           escreval("Produto ", prod[i], " vendeu R$", vend[i])
           escreval("Produto ", prod[i], " rendeu R$", coms[i], " de comissão")
           escreval(" ")
      fimpara
      
      escreval("O valor total das vendas foi de R$", vend[1] + vend[2] + vend[3] + vend[4])
      escreval("De comissão foi ganho R$", coms[1] + coms[2] + coms[3] + coms[4])
Fimalgoritmo