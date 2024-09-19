Algoritmo "Glicose"

Var
   gli : vetor [1..2] de real
   est : vetor [1..3] de caracter
   resp : real
   i: inteiro
Inicio
   est[1] <- "Normal"
   gli[1] <- 100
   est[2] <- "Elevado"
   gli[2] <- 140
   est[3] <- "Diabetes"
   escreva("Medida da glicose: ")
   leia(resp)

   para i de 1 até 2 faca
      se resp <= gli[i] então
         escreva("Classificação: ", est[i])
         fimalgoritmo
      fimse
   fimpara
   escreva("Classificação: ", est[i+1])
Fimalgoritmo