//importação de módulos deve ser feito através de variáveis
var multiFun = require('./multiplicacao')
var calculadora = require('./calc')

console.log('hello world');

function soma (a, b){
    return a + b;
}

//função interna
console.log(soma(3,4));

//função única de um módulo
console.log(multiFun(3,4));

//várias funções de um módulo
console.log(calculadora.subtracao(3,4));
console.log(calculadora.divisao(3,4));

//variável de um módulo
console.log(calculadora.nome);

