Algoritmo "Multiplos"

Var
   num1, num2, fn: inteiro
   ln : real
Inicio
   leia(fn)
   leia(num2)
   se (fn < num2) ent�o
      num1 <- num2
      num2 <- fn
   sen�o
      num1 <- fn
   fimse
   ln <- num1 mod num2
   se (ln = 0) ent�o
      escreva("S�o M�1ltiplos!")
   sen�o
      escreva("N�o s�o M�ltiplos")
   fimse
Fimalgoritmo