main() {
  //Operadores Aritméticos (binários/infix)
  //infix porque os operadores ficam entre os valores, ou entre 2 termos
  int a = 7;
  int b = 3;
  int resultado = a + b;

  print(resultado); //imprime: 10
  print(a + b); //imprime: 10
  print(a - b); //imprime: 4
  print(a * b); //imprime: 21
  print(a / b); //imprime: 2.3333333333333335
  print(a % b); //imprime o resto da divisão: 1
  print(33 % 2); //imprime o resto da divisão: 1 (então é ímpar)
  print(34 % 2); //imprime o resto da divisão: 0 (então é par)
  print(a + b * 7 - 24 / b); // imprime: 20

  //Operadores Lógicos
  bool coisaFragil = true;
  bool coisaCara = false;

  //Binários/Infix
  print(coisaFragil && coisaCara); //operação 'E/AND' (multiplicação): false
  // ignore: dead_code
  print(coisaFragil || coisaCara); //operação 'OU/OR' (soma): true
  //Na situação acima, pode acontecer dos dois serem verdadeiros e resulta true
  print(coisaFragil ^ coisaCara); //operação 'OU Exclusivo/XOR': true
  //Na situação acima, somente um pode ser verdadeiros e resulta true

  //Unários/Prefix
  print(!coisaFragil); //operação de negação, o que era true retorna: false
}
