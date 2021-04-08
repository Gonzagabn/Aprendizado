import 'dart:math';

/*Funções que retornam um inteiro, com e sem parâmetro*/
main() {
  int resultado = somar(2, 3);

  print(resultado); //imprime: 5
  print(somarNumerosAleatorios()); //imprime a soma de 2 números aleatórios
}

//Quando defino a função como "int" ela somente retornará um inteiro
int somar(int a, int b) {
  return a + b;
}

int somarNumerosAleatorios() {
  int a = Random().nextInt(11);
  int b = Random().nextInt(11);
  return a + b;
}
