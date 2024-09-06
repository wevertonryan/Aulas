Algoritmo "Formula_de_Bhaskara"

Var
   a, b, c, raiz, x1, x2 : real
Inicio
   escreval("Defina os Coeficientes:")
   escreva("a: ")
   leia(a)
   escreva("b: ")
   leia(b)
   escreva("c: ")
   leia(c)
   escreval("")

   raiz <- b^2-4*a*c
   se (raiz<0) então
      escreva("Essa equação não possui raizes reais.")
      fimalgoritmo
   fimse
   raiz <- raizq(raiz)

   x1 <- (-b + raiz) / (2*a)
   x2 <- (-b - raiz) / (2*a)
   escreval("X1 = ", x1:1:4)
   escreval("X2 = ", x2:1:4)
Fimalgoritmo