main() {
  for (int i = 0; i < 10; i++) {
    if (i == 6) {
      break; //O break para o laço for e sai dele
    }
    print(i);
  }
  print('Depois do laço for');
  /*imprime:  0
              1
              2
              3
              4
              5
              Depois do laço for*/
  for (int i = 0; i < 10; i++) {
    if (i % 2 == 0) /*Se for par ele ativa o continue*/ {
      continue; //O continue pula a repetição atual do for e continua nele
    }
    print(i);
  }
  print('Depois do laço for #2');
  /*imprime:  1
              3
              5
              7
              9
              Depois do laço for #2 */
}
