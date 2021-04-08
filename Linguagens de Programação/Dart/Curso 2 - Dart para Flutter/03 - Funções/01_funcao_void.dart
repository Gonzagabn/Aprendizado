import 'dart:math';

/*Função:
A função escrita fora de uma classe é chamada de "Função",
já a função escrita dentro de uma classe, é chamada de "Método".

OBS: O Java não aceita função fora de classe, mas o Dart aceita, isso porque
o Dart é uma linguagem orientada a objetos como o Java, mas também suporta 
recursos do paradigma de programação funcional.
*/

/*Funções que não retornam nada, com e sem parâmetro*/

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
//Aqui os parâmetros são obrigatórios e devem ser do tipo declarado
void somaComPrint(int n1, int n2) /*n1 e n2 são parâmetros de entrada*/ {
  print(n1 + n2);
}

void somaDoisNumerosQuaisquer() {
  int n1 = Random().nextInt(11);
  int n2 = Random().nextInt(11);
  print('O primeiro número sorteado foi o $n1 e o segundo $n2');
  print(n1 + n2);
}
