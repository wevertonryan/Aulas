Algoritmo "Churrascaria"

Var
   resp, select, i, v : inteiro
   total: vetor [1..2] de real
   td_pessoas, td_alim, td_item, td_serv : inteiro
   item, descricao : vetor [1..10] de caracter
   valor: vetor [1..10,1..2] de real
   quantidade : vetor [1..10,1..2] de inteiro
Inicio
   item[1] <- "Picanha (KG)"
   valor[1,1] <-  1343.90

   item[2] <- "Contra Filé (KG)"
   valor[2,1] <-  39.90

   item[3] <- "Linguiça (KG)"
   valor[3,1] <-  19.90

   item[4] <- "Pão de Alho (KG)"
   valor[4,1] <-  29.90

   item[5] <- "Refrigerante 2L"
   valor[5,1] <-  3.99

   item[6] <- "Suco (L)"
   valor[6,1] <-  7.99

   td_alim <- 6

   item[7] <- "Churrasqueira barata"
   valor[7,1] <-  50
   quantidade[7,1] <- 5
   descricao[7] <- "Pobre kkkk"

   item[8] <- "Churrasqueira cara"
   valor[8,1] <-  10000
   quantidade[8,1] <- 5
   descricao[8] <- "Burguês Safado"

   td_item <- 8

   item[9] <- "Cozinheiro Profissional (Hora)"
   valor[9,1] <-  100

   item[10] <- "Tiago"
   valor[10,1] <-  0
   quantidade[10,1] <- 1
   descricao[10] <- "Ele vem apenas para comer e tomar coquinha"

   td_serv <- 10


procedimento vef
inicio
   escolha v
   caso 0
   caso 1
      escreval("")
      escreval("Valor Inválido")
      escreval("")
   caso 2
      escreval("")
      escreval("Quantidade acima dos disponiveis")
      escreval("")
   outrocaso
      escreval("")
      escreval("Erro não definido")
      escreval("")
   fimescolha
   v <- 0
fimprocedimento

procedimento menu_comprar
inicio
   enquanto Verdadeiro faca
      limpatela
      escreval("===| COMPRAR |===")
      escreval("[1]Alimentos")
      escreval("[2]Itens")
      escreval("[3]Serviços")
      escreval("[0]Voltar")
      leia(resp)

      escolha resp
      caso 1
         com_alimentos
      caso 2
         com_itens
      caso 3
         com_servicos
      outrocaso
         interrompa
      fimescolha
   fimenquanto
fimprocedimento

procedimento com_alimentos
inicio
   enquanto Verdadeiro faca
      limpatela
      escreval("===| COMPRAR - ALIMENTOS |===")
      para i de 1 ate td_alim faca
         escreval("[", i:1, "]", item[i])
      fimpara
      escreval("[0]Voltar")
      escreval("")
      escreval("Selecione um item")
      vef
      leia(resp)

      se (resp <= td_alim) e (resp > 0) entao
         select <- resp
         com_selecao
      senao
         interrompa
      fimse
   fimenquanto
fimprocedimento

procedimento com_itens
inicio
   enquanto Verdadeiro faca
      limpatela
      escreval("===| COMPRAR - ITENS |===")
      para i de (td_alim+1) ate td_item faca
         escreval("[", i:1, "]", item[i])
      fimpara
      escreval("[0]Voltar")
      escreval("")
      escreval("Selecione um item")
      vef
      leia(resp)

      se (resp <= td_item) e (resp > td_alim) entao
         select <- resp
         com_selecao
      senao
         interrompa
      fimse
   fimenquanto
fimprocedimento

procedimento com_servicos
inicio
   enquanto Verdadeiro faca
      limpatela
      escreval("===| COMPRAR - SERVIÇOS |===")
      para i de (td_item+1) ate td_serv faca
         escreval("[", i:1, "]", item[i])
      fimpara
      escreval("[0]Voltar")
      escreval("")
      escreval("Selecione um item")
      vef
      leia(resp)

      se (resp <= td_serv) e (resp > td_item) entao
         select <- resp
         com_selecao
      senao
         interrompa
      fimse
   fimenquanto
fimprocedimento

procedimento com_selecao
inicio
   limpatela
   escreval("-------------------------")
   escreval("Item: ", item[select])
   escreval("- Preço: R$", valor[select]:3:2)
   se quantidade[select,1] > 0 entao
      escreval("- Quantidade disponiveis: ", quantidade[select,1]-quantidade[select,2])
   fimse
   escreval("- Descrição: ", descricao[select])
   escreval("")
   escreval("[1]Comprar | [0]Voltar")
   leia(resp)

   escolha resp
   caso 1
      se quantidade[select,1] > 0 entao
         se quantidade[select,1] > 1 entao
            escreva("Digite a quantidade desejada: ")
            leia(resp)
            se (resp <= (quantidade[select,1]-quantidade[select,2])) e (resp > 0) entao
               quantidade[select,2] <- quantidade[select,2] + resp
               valor[select,2] <- valor[select,1] * quantidade[select,2]
               select <- 0
            senao
               se (resp >= (quantidade[select,1]-quantidade[select,2])) entao
                  v <- 2
               senao
                  v <- 1
               fimse
            fimse
         senao
            quantidade[select,2] <- 1
            valor[select,2] <- valor[select,1] * quantidade[select,2]
            select <- 0
         fimse
      senao
         escreva("Digite a quantidade desejada: ")
         leia(resp)
         se (resp > 0) entao
            quantidade[select,2] <- quantidade[select,2] + resp
            valor[select,2] <- valor[select,1] * quantidade[select,2]
            select <- 0
         senao
            v <- 1
         fimse
      fimse
   fimescolha
fimprocedimento

procedimento menu_itens
inicio
   limpatela
   escreval("===| ITENS COMPRADOS |===")
   para i de 1 ate td_serv faca
      se quantidade[i,2] > 0 entao
         escreval("Item: ", item[i])
         escreval("- quantidade: ", quantidade[i,2])
         escreval("- valor total: R$", valor[i,2]:3:2)
         escreval("")
      fimse
   fimpara
   escreval("Qualquer tecla para Voltar")
   leia(resp)
fimprocedimento



procedimento menu_pagamento
inicio
   enquanto Verdadeiro faca
      limpatela
      escreval("===| PAGAMENTO |===")
      vef
      escreval("Quantas pessoas vão participar?")
      leia(td_pessoas)

      total[1] <- 0
      para i de 1 ate td_serv faca
         total[1] <- total[1] + valor[i,2]
      fimpara

      se td_pessoas > 0 entao
         total[2] <- total[1] / td_pessoas
         escreval("Total de todos os itens: R$", total[1]:3:2)
         escreval("Total de pessoas: ", td_pessoas)
         escreval("Quanto cada pessoa vai pagar: R$", total[2]:3:2)
         escreval("")
         escreval("Qualquer tecla para voltar")
         leia(resp)
         interrompa
      senao
         v <- 1
      fimse
   fimenquanto
fimprocedimento

enquanto Verdadeiro faca
   limpatela
   escreval("===| CHURRASCO |===")
   escreval("[1]Comprar")
   escreval("[2]Itens Comprados")
   escreval("[3]Pagamento")
   escreval("[4]Sair")
   leia(resp)

   escolha resp
   caso 1
      menu_comprar
   caso 2
      menu_itens
   caso 3
      menu_pagamento
   caso 4
      interrompa
   outrocaso
   fimescolha
fimenquanto
Fimalgoritmo