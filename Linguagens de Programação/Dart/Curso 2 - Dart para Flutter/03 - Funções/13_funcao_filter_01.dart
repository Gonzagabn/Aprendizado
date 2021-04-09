//Problema:
//Filtrar as notas que são maiores ou iguais a 7, gerando uma nova lista
//Solução mais comum: Aqui o reuso da função é mais difícil

main() {
  var notas = [8.2, 7.1, 6.3, 4.4, 3.9, 8.8, 9.1, 5.1];
  var notasBoas = [];

  for (var nota in notas) {
    if (nota >= 7) {
      notasBoas.add(nota);
    }
  }

  print(notas); //imprime: [8.2, 7.1, 6.3, 4.4, 3.9, 8.8, 9.1, 5.1]
  print(notasBoas); //imprime: [8.2, 7.1, 8.8, 9.1]
}
