main() {
  for (int a = 0; a < 10; a++) {
    print('a = $a'); //Vai imprimir o valor de a = 0, 1, 2... até a = 9
  }
  print('Fim!'); //só imprime quando termina o laço de repetição

  int a = 0;
  for (; a <= 10; a += 2) {
    print('a = $a'); //Vai imprimir o valor de a = 0, 2, 4... até a = 10
  }

  print('a = $a'); //imprime: a = 12 (sai do laço quando 'a' ultrapassa 10)

  print('Fim!'); //imprime: Fim!
}
