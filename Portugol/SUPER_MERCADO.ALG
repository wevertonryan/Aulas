Algoritmo "Super_Mercado"
// Faça o algoritmo de um sistema para supermercado.
//O objetivo é que após a digitação do código de barras,
//o produto seja mostrado na tela e então o operador de caixa possa digitar
//a quantidade daquele produto que o cliente está levando.
//Ao término da digitação, apresente o total da compra

procedimento menu_inicial
inicio
   menu.titulo <- "JAÚ NÃO SERVE"
   menu.opcoes <- 5
   opcao[1] <- "COMPRAR"
   opcao[2] <- "PRODUTOS"
   opcao[3] <- "GASTOS"
   opcao[4] <- "DINHEIRO"
   opcao[5] <- "SAIR"
   para i de 1 ate menu.opcoes faca
      escreval("[", i:1, "] ", opcao[i])
   fimpara
fimprocedimento

procedimento menu_comprar
inicio
   menu.titulo <- "COMPRAR"

fimprocedimento

procedimento menu_produtos
inicio
   menu.titulo <- "PRODUTOS"
fimprocedimento

procedimento menu_dinheiro
inicio
   menu.titulo <- "DINHEIRO"
fimprocedimento

procedimento fun_mapeamento(x)
inicio
   escolha resp
   caso 1
      menu_comprar
   caso 2
      menu_produtos
   caso 3
      menu_gastos
   caso 4
      menu_dinheiro
   caso 5
      interrompa
   fimescolha
fimprocedimento

tipo caracteristicas = registro
   nome : caracter
   codigo : inteiro
   preco : real
   quant : inteiro

   titulo : caracter
   opcoes : inteiro
fimregistro
Var
   produtos : vetor [1..5] de caracteristicas
   i, resp, nav : inteiro
   dinheiro : real
   menu : caracteristicas
   opcao : vetor[1..10] de caracter
Inicio
   produtos.nome[1] <- "Leite"
   produtos.preco[1] <- 9.99
   produtos.codigo[1] <- 1

   produtos.nome[2] <- "Banana"
   produtos.preco[2] <- 1.99
   produtos.codigo[2] <- 1

   produtos.nome[3] <- "Frango"
   produtos.preco[3] <- 29.99
   produtos.codigo[3] <- 1

   produtos.nome[4] <- "Geladeira Eletrolux 2 portas"
   produtos.preco[4] <- 5999.99
   produtos.codigo[4] <- 1

   produtos.nome[5] <- "Thiago (item raro)"
   produtos.preco[5] <- 100000
   produtos.codigo[5] <- 1

   menu_inicial
   enquanto Verdadeiro faca
      limpatela
      escreval("===", menu.titulo, "===")
      escreval("Dinheiro: R$",dinheiro:3:2)
      escreval("")
      para i de 1 ate menu.opcoes faca
         escreval("[", i:1, "] ", opcao[i])
      fimpara
      leia(resp)

      escolha resp
      caso 1
      caso menu.opcoes
         interrompa
      fimescolha
   fimenquanto
Fimalgoritmo