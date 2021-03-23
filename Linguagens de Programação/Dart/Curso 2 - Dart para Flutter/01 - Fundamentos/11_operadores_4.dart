import 'dart:io';

main() {
  print('Está chovendo? (s/N)');
  final estaChovendo = stdin.readLineSync() == 's';

  print('Está frio? (s/N)');
  bool estaFrio = stdin.readLineSync() == 's';

  //Operador Ternário
  String resultado = estaChovendo || estaFrio ? 'Ficar em casa' : 'Sair!!';
  //Estrutura -> (lógica) ? (Se true) : (Se false)
  print(resultado);
}
