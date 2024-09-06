Algoritmo "notas"

Var
   nota : vetor [1..2] de real
   soma : real
Inicio
   escreva("primeira nota (de 0 a 100): ")
   leia(nota[1])
   escreva("segunda nota (de 0 a 100): ")
   leia(nota[2])
   escreva("")

   soma <- nota[1] + nota[2]
   escreval("Nota Final: ", soma:1:1)
   se (soma >= 60) então
      escreva("Situação: Aprovado!!!")
   senão
      escreva("Situação: Reprovado!!!")
   fimse
Fimalgoritmo