main() {
  int a = 2;
  //tipo da variável + nome da variável + valor da variável;
  print(a);

  int Function(int, int) soma1 = somaFn; //tipo  + nome + valor;
  /*Aqui posso definir o valor como 'somaFn' porque a variável 'soma1' tem as 
  mesmas características da função 'somaFn()'*/

  /*Essa variável chamada 'soma1' é do tipo 'Function', com 2 parâmetros 
  inteiros e que vai receber a função 'somaFn'*/
  print(soma1(25, 30));

  //Função anonima, ou sem nome
  int Function(int, int) soma2 = (x, y) {
    return x + y;
  };
  print(soma2(25, 30));

  //Função anonima, por inferência, com o parâmetro 'y' opcional
  var soma3 = (int x, [int y = 3]) {
    return x + y;
  };
  print(soma3(25));
}

int somaFn(int a, int b) {
  return a + b;
}
