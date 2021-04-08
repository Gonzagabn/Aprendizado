/*Funções anônimas sem e com arrow function*/
main() {
  var adicao = (int a, int b) {
    return a + b;
  };
  print(adicao(2, 7));

  //Sintaxe de "arrow function"
  var subtracao = (int a, int b) => a - b;
  print(subtracao(2, 7));

  var multiplicacao = (int a, int b) => a * b;
  print(multiplicacao(2, 7)); //imprime um inteiro

  var divisao = (int a, int b) => a / b;
  print(divisao(2, 7)); //imprime um 'double' por inferência, devido ao 'var'
}
