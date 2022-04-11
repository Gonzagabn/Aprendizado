var nome = 'Calculadora JS';

function subtracao (a, b){
    return a - b;
}

function divisao (a, b){
    return a / b;
}

//exportando várias funções para serem acessadas a partir de outro arquivo
module.exports = {subtracao, divisao, nome};