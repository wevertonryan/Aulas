Algoritmo "Sistema de Navegacao"

//informações
procedimento menu_inicial
inicio
   escreval("[1]COMPRAR")
   escreval("[2]PRODUTOS")
   escreval("[3]GASTOS")
   escreval("[4]DINHEIRO")
   escreval("[5]SAIR")
fimprocedimento

procedimento menu_comprar
inicio
   escreval("[0]Voltar")
   escreva("- Código produto:")
fimprocedimento

procedimento menu_comp_info
inicio
   escreval("CÓDIGO: ", produto.codigo[code])
   escreval("Produto: ", produto.nome[code])
   escreval("- Preço: R$", produto.preco[code])
   se produto.quant_limit[code] > 0 entao
      escreval("- Quantidade limite: ", produto.quant_limit[code])
   fimse
   escreval("")
   escreval("[1]Comprar / [0]Voltar")
   se sub = 2 entao
      escreva("Quantidade: ")
   fimse
fimprocedimento

procedimento menu_produtos
inicio
   para i de 1 ate prod_total faca
      escreval("[", i:1, "]", produto.nome[i])
   fimpara
fimprocedimento

procedimento menu_prod_info
inicio
   escreval("INFORMAÇÕES:")
   escreval("[", resp:1, "]", produto.nome[resp])
   escreval("- Preço: R$", produto.preco[resp])
   se produto.quant_limit[resp] > 0 entao
      escreval("- Quantidade limite: ", produto.quant_limit[resp])
   fimse
   escreval("- Código: ", produto.codigo[resp])
fimprocedimento

procedimento menu_gastos
var
   gasto_total : real
inicio
   gasto_total <- 0
   para i de 1 ate prod_total faca
      se produto.quant_usua[i] > 0 entao
         escreval("[", i:1, "]", produto.nome[i], ": ", produto.quant_usua[i])
         gasto_total <- gasto_total + (produto.quant_usua[i] * produto.preco[i])
      fimse
   fimpara
   se gasto_total > 0 entao
      escreval("")
   fimse
   escreval("Gasto Total: R$", gasto_total:3:2)
fimprocedimento

procedimento menu_dinheiro
inicio
fimprocedimento

procedimento mapeamento  //CONDIÇÕES ESPECIFICAS, NUMERO LIMITADO
inicio
   escolha nav
   caso 0
      menu_inicial
   caso 1
      escolha sub
      caso 0
         code <- 0
         menu_comprar
      caso 1, 2
         menu_comp_info
      fimescolha
   caso 2
      escolha sub
      caso 0
         menu_produtos
      caso 1
         menu_prod_info
      fimescolha
   caso 3
      menu_gastos
   caso 4
      menu_dinheiro
   fimescolha
fimprocedimento

procedimento resposta
inicio
   leia(resp)
   escolha nav
   caso 0
      titulo <- "INICIO"
      escolha resp
      caso 1, 2, 3, 4
         nav <- resp
      caso 5
         interrompa
      fimescolha
   caso 1
      titulo <- "COMPRAR"
      escolha sub
      caso 0
         se(resp > 0) e (resp <= prod_total) entao
            se produto.quant_limit[resp] > 0 entao
               se produto.quant_limit[resp] > produto.quant_usua[resp] entao
                  sub <- 1
                  code <- resp
               fimse
            senao
               sub <- 1
               code <- resp
            fimse
         fimse
         se (resp = 0) entao
            nav <- 0
         fimse
      caso 1
         escolha resp
         caso 0
            sub <- 0
         caso 1
            se dinheiro >= produto.preco[code] entao
               sub <- 2
            fimse
         fimescolha
      caso 2
         se (resp > 0) e (dinheiro >= (resp * produto.preco[code])) entao
            se produto.quant_limit[code] > 0 entao
               se produto.quant_limit[code] >= (produto.quant_usua[code] + resp) entao
                  produto.quant_usua[code] <- produto.quant_usua[code] + resp
                  dinheiro <- dinheiro - (resp * produto.preco[code])
                  sub <- 1
               fimse
            senao
               produto.quant_usua[code] <- produto.quant_usua[code] + resp
               dinheiro <- dinheiro - (resp * produto.preco[code])
               sub <- 1
            fimse
         fimse
      fimescolha
   caso 2
      titulo <- "PRODUTOS"
      escolha sub
      caso 0
         se (resp > 0) e (resp <= prod_total) entao
            sub <- 1
         senao
            nav <- 0
         fimse
      caso 1
         sub <- 0
         nav <- 2
      fimescolha
   caso 3
      titulo <- "GASTOS"
      escolha resp
      outrocaso
         nav <- 0
      fimescolha
   caso 4
      titulo <- "DINHEIRO"
      escolha resp
      outrocaso
         nav <- 0
      fimescolha
   fimescolha
fimprocedimento


tipo prod_info = registro
   nome : caracter
   preco : real
   quant_limit, quant_usua : inteiro
   codigo : inteiro
fimregistro

Var
   titulo : caracter
   resp, i, nav, sub, code : inteiro
   resp_calc : real
   dinheiro : real
   produto : vetor [1..5] de prod_info
   prod_total : inteiro

Inicio
   dinheiro <- 100000

   prod_total <- prod_total + 1
   produto.nome[prod_total] <- "LEITE"
   produto.preco[prod_total] <- 9.99
   produto.codigo[prod_total] <- prod_total

   prod_total <- prod_total + 1
   produto.nome[prod_total] <- "BANANA"
   produto.preco[prod_total] <- 2.99
   produto.codigo[prod_total] <- prod_total

   prod_total <- prod_total + 1
   produto.nome[prod_total] <- "FRANGO"
   produto.preco[prod_total] <- 19.99
   produto.codigo[prod_total] <- prod_total

   prod_total <- prod_total + 1
   produto.nome[prod_total] <- "GELADEIRA ELETROLUX 2 PORTAS"
   produto.preco[prod_total] <- 3999.99
   produto.quant_limit[prod_total] <- 5
   produto.codigo[prod_total] <- prod_total

   prod_total <- prod_total + 1
   produto.nome[prod_total] <- "THIAGO"
   produto.preco[prod_total] <- 10000
   produto.quant_limit[prod_total] <- 1
   produto.codigo[prod_total] <- prod_total

   enquanto Verdadeiro faca
      limpatela
      escreval("===[ ", titulo, " ]===")
      escreval("Dinheiro: R$", dinheiro:3:2)
      escreval("")
      mapeamento
      {sessão aviso}
      resposta
      escreval("Alternativas")
   fimenquanto
Fimalgoritmo