main() {
  String nome = 'João';
  String status = 'aprovado';
  double nota = 9.2;

  //Concatenação com operador '+':
  String frase1 = nome + ' está ' + status + ' pq tirou ' + nota.toString();
  print(frase1);

  //Concatenação com '$':
  String frase2 = '$nome está $status pq tirou $nota';
  print(frase2);

  print('30 * 30 = ${30 * 30}'); //O $ permite realizar qlqr operação na String
}
