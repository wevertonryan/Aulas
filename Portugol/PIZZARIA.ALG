Algoritmo "Pizzaria"

Var
   {Aqui fica o nome dos produtos, fiz em vetor para não ter que ficar criando variavel}
   prod_nome: vetor [1..4] de caracter
   {Aqui utilizei matriz para fazer tipo uma tabela, a primeira coluna é o valor do produto, a segunda coluna é a quantidade pedida pelo usuário, e a terceira é a multiplicação das duas, dando o valor que aquele produto tem}
   prod_valor: vetor [1..4,1..3] de real
   {- quant: é de quantidade, a quantidade de vezes que o cliente consumiu um produto}
   {- pag_garcom: é o pagamento do garçom kkk}
   {- total: é de total a pagar}
   {- pag: é o valor que o cliente quis colocar para pagar}
   {- troco: é troco do pagamento kkk}
   quant, pag_garcom, total, pag, troco: real
   {- resp: é de resposta, a resposta do usuario}
   {- i: é variavel para o comando de repetição para(for)}
   {- v: é uma variavel de condição para uma mensagem que aparece para o usuario, vai ficar mais claro depois a função dessa variavel}
   {- prods: é a variadade de produtos que tem na pizzaria}
   resp, i, v, prods: inteiro
   {form_pag: é forma de pagamento (Dinheiro, Debito, Credito, etc...)}
   form_pag : caracter
Inicio
   {aqui é o nome dos produtos e seu valor}
   prod_nome[1] <- "Pizza"
   prod_valor[1,1] <- 45.9

   prod_nome[2] <- "Calzone"
   prod_valor[2,1] <- 33.9

   prod_nome[3] <- "Refrigerante Lata"
   prod_valor[3,1] <- 4

   prod_nome[4] <- "Suco Jarra"
   prod_valor[4,1] <- 6

   prods <- 4 {como tem quatro produtos coloquei 4, caso tivesse mais produtos colocaria mais, essa variavel vai facilitar para a utilizaçao de comandos de loop como o para(for), ai eu não preciso ir procurar cada comando de loop para trocar, é só mudar aqui, porque as variaveis de loop para(for) estão baseadas na quantidade de produto}

   {utilizei um procedimento para verificar a resposta do usuario para ver se não é negativo, e para ver se não é maior que o número de possibilidades de resposta}
procedimento res (x:inteiro) {o x é variavel de quantidade de escolhas}
inicio
   leia(resp)
   se (resp > 0) e (resp <= x) entao
   senao
      {caso a resposta do usuario não for condizente vai retornar para a variavel "v" a condição 1, essa variavel vai ser utilizada no procedimento verf (que seria um procedimento de verificação de situação, em breve chegaremos nele)}
      v <- 1
   fimse
fimprocedimento
{o procedimento qnt é praticamente igual ao procedimento anterior (res), a unica diferença é que esse é para valores reais (numeros quebrados), seria para quantidade que o cliente quiser de tal produto (exemplo: se o cliente quiser uma pizza e meia, com esse procedimento ele consegue)}
procedimento qnt (x:real) {o "x" é variavel de valor mais baixo aceitavel}
inicio
   leia(quant)
   se (quant < 0) entao
      v <- 1
   senao
      se (quant >= x) entao
         v <- 0
      senao
         v <- 5
      fimse
   fimse
fimprocedimento

{procedimento vef é para verificar condição, e vai mandar uma mensagem em uma parte especifica da tela, antes eu colocava essas mensagens direto no código com comandos de repetição, mas isso me impedia de utilizar o comando "limpatela", pois iria apagar informações importantes, então a tela ficava feiona com uns comandos repetidos, por causa de mensagens erradas que o úsuario digitava, esse procedimento soluciona isso}
procedimento vef
inicio
   escolha v
      {condição 1: é uma mensagem generica de erro quando o usuario digita algo errado}
   caso 1
      escreval("")
      escreval("Valor Inválido")
      {condição 2: é especifico para a tela de "Pedidos", caso o cliente não tenha feito nem um pedido, e entre na aba "Pedidos", vai aparecer uma mensagem dizendo que nem um pedido foi feito, caso um pedido seja feito posteriormente, a mensagem some}
   caso 2
      escreval("Ainda não foi pedido nenhum item")
      {condição 3: é especifico para a tela "Menu", caso o cliente faça algum pedido, aparece uma mensagem dizendo qual pedido ele fez, como eu usei o "limpatela", é apagado o que ele digitou, então isso deixa na tela após o "limpatela" o que ele pediu}
   caso 3
      escreval("")
      escreval("Pedido feito:", quant, " ", prod_nome[resp])
      {condição 4: é especifico para quando se quer sair do sistema, caso o cliente tenha feito algum pedido, e tenha decidido do sistema sem pagar, o com um valor abaixo do suficiente para pagar a conta, não é permitido sair}
   caso 4
      escreval("")
      escreval("Finalize o pagamento do que consumiu antes de ir embora.")
      {condição 5: é especifico para a tela de "Pagamento", caso o cliente adicione um valor menor do que o que ele consimiu em produtos}
   caso 5
      escreval("")
      escreval("Valor Insuficiente")
   fimescolha
   {após a verificação de condições, defino a variavel "v" como 0 para evitar problemas}
   v <- 0
fimprocedimento

{aqui são as abas, eu poderia ter colocado elas direto no "escolha" que tá la no final do codigo, mas prefiri utilizar procedimentos, pois deixa mais organizado, e se eu quiser chamar alguma aba dentro de outra aba eu consigo, o que não seria possivel se eu colacasse tudo direto no "escolha" que tá lá embaixo}
procedimento sistema
inicio
   limpatela
   escreval("--- PIZZARIA ---")
   escreval("")
   escreval("[1] Ver pedidos")
   escreval("[2] Adicionar o Consumo de mais itens")
   escreval("[3] Fazer o recebimento de mesa")
   escreval("[4] Sair do sistema")
   vef
   escreval("")
   res(4) {procedimento com 4 possibilidades}
fimprocedimento

procedimento pedidos
inicio
   limpatela
   escreval("--- PEDIDOS ---")
   escreval("")
   v <- 2 {defini a condição 2 logo de cara, para o caso de nenhum item ser adicionado}
   para i de 1 ate prods faca {laço de repetição para(for), para eu não ficar precisando lista tudo a mão, e caso eu adicione algum outro item como produto ele adiciona automaticamente}
      se (prod_valor[i,2] > 0) entao
         escreval(prod_valor[i,2], " | ", prod_nome[i])
         v <- 0 {caso entre nessa condição de "se", ele define como "0", que seria condição nula}
      fimse
   fimpara
   vef
   escreval("")
   escreval("[1] Voltar")
   leia(resp) {aqui não precisei colocar o procedimento "res", pois só tem uma possibilidade, então qualquer tecla que for digitada sai da pagina}
fimprocedimento

procedimento menu
inicio
   repita
      limpatela
      escreval("--- MENU ---")
      escreval("")
      escreval("Comidas:")
      escreval("[1] R$", prod_valor[1,1]:3:2, " | ", prod_nome[1])
      escreval("[2] R$", prod_valor[2,1]:3:2, " | ", prod_nome[2])
      escreval("")
      escreval("Bebidas:")
      escreval("[3] R$", prod_valor[3,1]:3:2, " | ", prod_nome[3])
      escreval("[4] R$", prod_valor[4,1]:3:2, " | ", prod_nome[4])
      escreval("")
      escreval("[5] Pedidos")
      escreval("[6] Voltar")
      vef
      escreval("")
      {o "res" aqui está com um "se", pois tem uma condição especifica, onde se o cliente digitar um valor negativo na hora de escolher a quantidade de algum item, ele não aceita, vai rodar o procedimento "menu" de novo, vai pular essa parte (que perguntaria a resposta do úsuario para escolher uma opção) e vai direto para a parte onde perguntaria a quantidade que o cliente quer}
      se quant >= 0 entao
         res(6)
      fimse

      escolha resp
      caso 1,2,3,4
         escreva("Quantidade de ", prod_nome[resp], ": ")
         qnt(0)
         se v <> 1 entao {"v 1" é condição de erro, se for diferente de uma mensagem de erro ele roda esse codigo, caso seja condição de erro, ele apenas vai pular essa parte, e vai rodar o menu novamente, esperando por uma resposta condizente por parte do cliente}
            prod_valor[resp,2] <- prod_valor[resp,2] + quant
            prod_valor[resp,3] <- prod_valor[resp,1] * prod_valor[resp,2]
            v <- 3 {caso a resposta do cliente não seja mensagem de erro, vai rodar a condição 3, que é a mensagem do que o cliente pediu}
         fimse
      caso 5
         pedidos {é uma opção para o cliente poder ir para a aba de pedidos, sem a necessidade de voltar para a aba principal, pode ir direto, é uma das vantagens que eu tinha comentado de utilizar procedimentos}
      caso 6
         interrompa
      fimescolha
   ate falso
fimprocedimento

procedimento pagamento
inicio
   repita
      limpatela
      {calculo do total gasto pelo cliente}
      total <- 0
      para i de 1 ate prods faca
         total <- total + prod_valor[i,3]
      fimpara

      escreval("--- PAGAMENTO ---")
      escreval("")

      escreval("Valor dos produtos: R$", total:3:2)

      pag_garcom <- total * 0.1 {calculo do pagamento do garçom}
      escreval("Pagamento do Garçom: R$", pag_garcom:3:2)

      total <- total + pag_garcom {é o total a ser pago, incluindo o pagamento do garçom}
      escreval("Total a Pagar: R$", total:3:2)
      escreval("")

      {verifica se o cliente fez ao menos um pagamento para demonstrar as mensagens abaixo, se ele não fez nem um pagamento é a primeira vez dele entrando naquela aba (eu acho), se ele efetuar algum pagamento e fizer algum outro pedido, e o valor do pedido passar o que ele pagou previamente, então vai aparecer uma mensagem dizendo que o valor que ele pagou previamente agora é insuficiente}
      se pag > 0 entao
         escreval("Forma de Pagamento: ", form_pag) {mensagem de forma de pagamento}
         escreval("Valor pago: R$", pag:3:2) {mensagem do valor que foi pago pelo cliente}
         se pag >= total entao
            troco <- pag - total
            escreval("Troco: R$", troco:3:2) {mensagem do valor do troco que o cliente vai receber}
         senao
            escreval("")
            escreval("Pagamento insuficiente!")
         fimse
         escreval("")
      fimse
      escreval("[1] Forma de Pagamento")
      escreval("[2] Voltar")
      vef
      escreval("")
      res(2)

      escolha resp
      caso 1
         pag_form
      caso 2
         interrompa
      fimescolha
   ate falso
fimprocedimento

{procedimento para definir a forma de pagamento e quanto será pago pelo cliente}
procedimento pag_form
inicio
   repita {loop para definir forma de pagamento}
      limpatela
      escreval("Forma de Pagamento:")
      escreval("")
      escreval("[1] Dinheiro")
      escreval("[2] Crédito")
      escreval("[3] Débito")
      escreval("[4] Pix")
      vef
      escreval("")
      res(4)

      escolha resp
      caso 1
         form_pag <- "Dinheiro"
         interrompa
      caso 2
         form_pag <- "Crédito"
         interrompa
      caso 3
         form_pag <- "Débito"
         interrompa
      caso 4
         form_pag <- "Pix"
         interrompa
      fimescolha
   ate falso

   repita {loop para definir quanto será pago pelo cliente}
      limpatela
      escreval("Forma de Pagamento: ", form_pag)
      escreval("Total a Pagar: R$", total:3:2)
      se (pag > 0) entao
         escreval("")
         escreval("Valor que foi pago: R$", pag:3:2)
         troco <- pag - total
         se (troco < 0) entao
            troco <- total - pag
            escreval("Valor que falta ser pago: R$", troco:3:2)
         fimse
         troco <- pag - total
      fimse
      vef
      escreval("")
      escreva("Insira o valor que deseja pagar: ")
      qnt(total - pag) {a quantidade minima a ser a aceita seria o total a ser pago}
      escreval("")

      {condição se, para definir se o valor que o cliente pagou é o suficiente, se for interrompe o loop, do contrario vai continuar o loop até conseguir o valor adequado}
      se ((quant+pag) >= total) e (quant >= 0) entao
         pag <- pag + quant
         interrompa
      fimse
   ate falso
fimprocedimento

{aqui é o sistema em base, onde é chamado todos os procedimentos, e a escolha das abas principais}
enquanto verdadeiro faca
   sistema

   escolha resp
   caso 1
      pedidos
   caso 2
      menu
   caso 3
      pagamento
   caso 4 {aqui é necessario calcular novamente o "total" a ser pago, pois caso o cliente tenha efetuado o pagamento, e tenha pedido mais depois, ele pode roubar da pizzaria, pois o "total" foi calculado apenas na hora de efetuar o pagamento}
      limpatela
      total <- 0
      para i de 1 ate prods faca
         total <- total + prod_valor[i,3]
      fimpara
      pag_garcom <- total * 0.1
      total <- total + pag_garcom

      se pag >= total entao {aqui é em condição normal, em que o cliente pagou suas dividas}
         escreval("Produtos Consumidos:")
         para i de 1 ate prods faca {laço de repetição para(for), para eu não ficar precisando lista tudo a mão, e caso eu adicione algum outro item como produto ele adiciona automaticamente}
            se (prod_valor[i,2] > 0) entao
               escreval(prod_valor[i,2], " | ", prod_nome[i])
               v <- 0 {caso entre nessa condição de "se", ele define como "0", que seria condição nula}
            fimse
         fimpara
         escreval("")
         escreval("Valor pago: R$", total:3:2)
         troco <- pag - total
         se troco > 0 entao
            escreval("Troco: R$", troco:3:2)
         fimse
         escreval("")
         escreval("Obrigado por vir a nossa Pizzaria!")
         interrompa
      senao {aqui é para a situação de cliente caloteiro}
         v <- 4
      fimse
   fimescolha
fimenquanto
Fimalgoritmo