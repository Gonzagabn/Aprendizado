import 'dart:io';

main() {
  String? teste = stdin.readLineSync();
  /*A interrogação significa que o dado que virá pode não ser uma String,
  mas será convertido para esse tipo assim que for recebido*/
  print(teste);

  var teste2 = stdin.readLineSync()!;
  //No caso de tipagem dinâmica como "var", a exclamação faz o mesmo serviço
  print(teste2);
}
