Algoritmo "Multiplos"

Var
   num1, num2, fn: inteiro
   ln : real
Inicio
   leia(fn)
   leia(num2)
   se (fn < num2) então
      num1 <- num2
      num2 <- fn
   senão
      num1 <- fn
   fimse
   ln <- num1 mod num2
   se (ln = 0) então
      escreva("São Mú1ltiplos!")
   senão
      escreva("Não são Múltiplos")
   fimse
Fimalgoritmo