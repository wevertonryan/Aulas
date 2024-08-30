Algoritmo "Desconto_na_Loja"

Var
   produto: vetor [1..4] de caracter
   preco: vetor [1..4] de real
   form_pgto: vetor [1..3] de caracter
   desconto: vetor [1..3] de real
   resp : vetor [1..2] de inteiro
   i : inteiro
Inicio
//Mapeamento do nome dos produtos e preço
   produto[1] <- "PC Gamer"
   preco[1] <- 4999.99
   
   produto[2] <- "Celular Gamer"
   preco[2] <- 1999.99
   
   produto[3] <- "Geladeira Gamer"
   preco[3] <- 5999.99
   
   produto[4] <- "Microondas Gamer Deluxe Edution"
   preco[4] <- 19999.99
   
//Definição de formas de pagamento e porcentagem do desconto
   form_pgto[1] <- "Dinheiro"
   desconto[1] <- 0.05
   
   form_pgto[2] <- "Cartão"
   desconto[2] <- 0
   
   form_pgto[3] <- "Pix"
   desconto[3] <- 0.1
   
//Inicio código
   escreval("Bem vindo as Lojas Americanas.")
   
//Apresentando os produtos disponiveis para compra
   escreval("O que deseja comprar?")
   para i de 1 até 4 faca
        escreval("[",i, " ] ", produto[i],": ", "R$", preco[i])
   fimpara
   leia(resp[1])
   
//Apresentando as formas de pagamento e perguntando qual será escolhido
   escreval("")
   escreval("Qual a forma de pagamento?")
   para i de 1 até 3 faca
        escreval("[",i, " ] ", form_pgto[i])
   fimpara
   leia(resp[2])
   
   escreval("")
   escreval("Produto Escolhido: ", produto[resp[1]])
   escreval("Preco do Produto: R$", preco[resp[1]])
   escreval("Forma de Pagamento: ", form_pgto[resp[2]])
   
   escreval("")
   escreval("Desconto:", desconto[resp[2]]*100, "%")
   escreval("Total a Pagar: R$", preco[resp[1]]-(preco[resp[1]]*desconto[resp[2]]))
   
   
Fimalgoritmo