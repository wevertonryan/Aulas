const read = require('readline-sync');
//variaveis
//const: constante, recebe valor apenas 1 vez, apenas de leitura
//var: variavel, escopo global dentro do código
//let: variavel, escopo local, dentro de funções e procedimentos
let facebook = 2;
let resp = 0;
let vef = 0;

//equivalente a se
function estrutura_de_decicao_se () {
if (facebook == 1) {
    console.log("facebook é igual a 1");
} else if (facebook == 2) {
    console.log("facebook é igual a 2");
} else {
    console.log("facebook é indefinido");
}
}

//equivalente ao escolha caso
function estrutura_de_decicao_escolha () {
switch(facebook) {
    case 1:
        console.log("facebook é igual a 1");
        break;
    case 2:
        console.log("facebook é igual a 2");
        break;
    case 3:
        console.log("facebook é igual a 3");
        break;
    case 4:
        console.log("facebook é igual a 4");
        break;
    default:
        console.log("facebook é indefinido");
}
}

//equivalente ao para
function estrutura_de_repeticao_para () {
for (let i = 0; i <= 10; i = i + 2) {
    console.log(i)
}
}

//equivalente ao enquanto
function estrutura_de_repeticao_enquanto () {
let i = 1;
while (i < 10) {
    console.log(i);
    i += 1 
}
}

//equivalente ao repita
function estrutura_de_repeticao_repita () {
let i = 1;
do {
    console.log(i);
    i += 1;
} while (i < 10)
}

//sistema de navegação
do {
    vef = 1
console.clear();
console.log("Estruturas em Java Script funcionando:");
console.log("[1] Estrutura de Decisão SE");
console.log("[2] Estrutura de Decisão ESCOLHA CASO");
console.log("[3] Estrutura de Repetição PARA");
console.log("[4] Estrutura de Repetição ENQUANTO");
console.log("[5] Estrutura de Repetição REPITA");

resp = parseInt(read.question());

console.clear();
switch(resp) {
    case 1:
        console.log("Estrutura de Decisão SE:");
        console.log("");
        estrutura_de_decicao_se();
        break;
    case 2:
        console.log("Estrutura de Decisão ESCOLHA CASO:");
        console.log("");
        estrutura_de_decicao_escolha();
        break;
    case 3:
        console.log("Estrutura de Repetição PARA:");
        console.log("");
        estrutura_de_repeticao_para();
        break;
    case 4:
        console.log("Estrutura de Repetição ENQUANTO:");
        console.log("");
        estrutura_de_repeticao_enquanto();
        break;
    case 5:
        console.log("Estrutura de Repetição REPITA:");
        console.log("");
        estrutura_de_repeticao_repita();
        break;
    default:
        console.log("valor inválido");
        vef = 2
}
resp = parseInt(read.question());
} while (vef == 2)


