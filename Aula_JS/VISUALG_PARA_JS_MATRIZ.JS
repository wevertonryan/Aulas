const read = require('readline-sync');

let nomes = [
    [],
    []
]

for (let i = 0; i < 2; ++i) {
    for (let j = 0; j < 3; ++j) {
        console.clear();
        console.log(`Linha ${j}, Coluna ${i}`);
        nomes[i][j] = read.question("");
    }
}

console.log(nomes);