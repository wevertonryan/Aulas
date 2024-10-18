Algoritmo "Churrascaria"

Var
   pessoa, i : inteiro
   alimentos, descricao : vetor [1..9] de caracter
   valor: vetor [1..9] de real
   quantidade : vetor [1..9] de inteiro
Inicio
   item[1] <- "Picanha (KG)"
   valor[1] <-  1343.90

   item[2] <- "Contra Filé (KG)"
   valor[2] <-  39.90

   item[3] <- "Linguiça (KG)"
   valor[3] <-  19.90

   item[4] <- "Pão de Alho (KG)"
   valor[4] <-  29.90

   item[5] <- "Refrigerante 2L"
   valor[5] <-  3.99

   item[6] <- "Suco (L)"
   valor[6] <-  7.99

   item[7] <- "Churrasqueira barata"
   valor[7] <-  50
   quantidade <- 5
   descricao[7] <- "Pobre kkkk"

   item[7] <- "Churrasqueira cara"
   valor[7] <-  10000
   quantidade <- 5
   descricao[7] <- "Burguês Safado"

   item[8] <- "Cozinheiro Profissional (Hora)"
   valor[8] <-  100

   item[9] <- "Tiago"
   valor[9] <-  0
   quantidade <- 1
   descricao[9] <- "Ele vem apenas para comer e tomar coquinha"

   procedimento comprar
   inicio
      para i de 1 ate 9 faca
           escreval(item[i])
           escreval(item[i])
           escreval(item[i])
           escreval(item[i])
      fimpara
   fimprocedimento
   
   
   enquanto Verdadeiro faca
      escreval("CHURRASCO")
      escreval("[1]Comprar")
      escreval("[2]Pagamento")
      escreval("[3]Sair")
   fimenquanto
Fimalgoritmo