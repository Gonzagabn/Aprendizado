main() {
  var notas = [00, 10, 20, 30, 40];
  for (var nota in notas) /*Aqui o 'for' percorre os indices da lista*/ {
    print('Nota = $nota'); //imprime: Nota = 0, Nota = 10, ... até, Nota = 40
  }

  var coordenadas = [
    [2, 4],
    [3, 7],
    [21, 5],
    [0, 12],
  ];

  for (var coordenada in coordenadas) {
    for (var ponto in coordenada) {
      print('Valor do ponto é $ponto');
    }
  }

  /*imprime: 
  Valor do ponto é 2
  Valor do ponto é 4
  Valor do ponto é 3
  Valor do ponto é 7
  Valor do ponto é 21
  Valor do ponto é 5
  Valor do ponto é 0
  Valor do ponto é 12
  */
}
