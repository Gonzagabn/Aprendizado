import 'dart:math';

main() {
  int n1 = numeroAlatorio(101);
  print(n1);

  int n2 = numeroAlatorio2();
  print(n2);

/*Aqui os parâmetros são posicionais e devem ser definidos na ordem original*/
  imprimirData(08, 04, 2021);
  imprimirData(08, 04);
  imprimirData(08);
}

//A função 'numeroAleatorio' tem que receber um parâmetro do tipo inteiro
int numeroAlatorio(int maximo) {
  return Random().nextInt(maximo);
}

/*A função 'numeroAleatorio2' tem um parâmetro opcional do tipo inteiro, 
mas caso não receba nenhum parametro o valor padrão é 10*/
int numeroAlatorio2([int maximo = 11]) /*Para ser opcional, basta colocar[]*/ {
  return Random().nextInt(maximo);
}

//Na função 'imprimirData' apenas o 'dia' é parâmetro obrigatório
imprimirData(int dia, [int mes = 1, int ano = 1970]) {
  print('$dia/$mes/$ano');
}
