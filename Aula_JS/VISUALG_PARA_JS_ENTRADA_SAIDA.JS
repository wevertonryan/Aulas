const read = require('readline-sync');

let nome = "";
let idade = 0;
let salario = 0;

nome = read.question("Qual o Nome?");
idade = parseInt(read.question("Qual a Idade?"));
salario = parseFloat(read.question("Qual Salário?"));

console.log("Olá ", nome, ", você tem ", idade, " anos, e ganha R$", salario);