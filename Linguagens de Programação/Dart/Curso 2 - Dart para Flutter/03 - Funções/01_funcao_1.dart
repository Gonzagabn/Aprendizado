import 'dart:math';

main() {
  int a = 2;
  int b = 3;

  print(a + b);

  int c = 4;
  int d = 5;

  print(c + d);

  //Função com parâmetros (n1 e n2)
  somaComPrint(6, 7);

  //Função sem parâmetros
  somaDoisNumerosQuaisquer();
}

//Void é uma função que não retorna nada
void somaComPrint(int n1, int n2) /*n1 e n2 são parâmetros de entrada*/ {
  print(n1 + n2);
}

void somaDoisNumerosQuaisquer() {
  int n1 = Random().nextInt(11);
  int n2 = Random().nextInt(11);
  print('O primeiro número sorteado foi o $n1 e o segundo $n2');
  print(n1 + n2);
}
