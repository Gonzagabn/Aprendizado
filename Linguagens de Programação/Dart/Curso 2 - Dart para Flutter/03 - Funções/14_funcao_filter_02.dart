//Problema:
//Filtrar as notas que são maiores ou iguais a 7, gerando uma nova lista
//Solução com "Where": Aqui é mais fácil de reusar

main() {
  var notas = [8.2, 7.1, 6.3, 4.4, 3.9, 8.8, 9.1, 5.1];
  //Aqui "notasBoasFn" retorna um booleano e é uma função que recebe como
  //parâmetro um elemento do tipo "double"
  bool Function(double) notasBoasFn = (double nota) => nota >= 7; //Se >=7 true
  var notasExcelentesFn = (double nota) => nota >= 8.8;

  //Aqui o "where" vai pegar somente os valores que forem true
  var notasBoas = notas.where(notasBoasFn);
  var notasExcelentes = notas.where(notasExcelentesFn);

  print(notas); //imprime: [8.2, 7.1, 6.3, 4.4, 3.9, 8.8, 9.1, 5.1]
  print(notasBoas); //imprime: (8.2, 7.1, 8.8, 9.1)
  print(notasExcelentes); //imprime: (8.8, 9.1)
}
