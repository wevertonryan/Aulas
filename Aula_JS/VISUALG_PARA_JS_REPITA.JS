const read = require('readline-sync');

let parar = ""
do {
    console.clear();
    console.log("Repitiu!");
    console.log("Parar de Repetir? (S/N)");
    parar = read.question().toUpperCase();
} while (!(parar == "S" || parar == "SIM" || parar == "S1M" || parar == "51M"));