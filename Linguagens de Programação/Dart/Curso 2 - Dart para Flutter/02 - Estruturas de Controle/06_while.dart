import 'dart:io';

main() {
  /*Usamos o 'for' para cenários determinados, repita as coisas de 'x -> y'
  Já o while serve mais para situações indeterminadas 'faça isso enquanto...'*/

  //'while' funcionando como um 'for':
  int a = 0;
  while (a < 4) /*percorra valores de 'a' até o limite onde 'a < 4'*/ {
    print(a);
    a++; //acrescenta 1
  }
  //imprime: 0, 1, 2 e 3

  var digitado = '';

  // O while vai executar somente se a condição for verdade em algum momento
  while (digitado != 'sair') /*o programa fica preso aqui até digitar 'sair'*/ {
    stdout.write('Digite algo ou sair: ');
    digitado = stdin.readLineSync()!;
  }
  print('Fim!');
  /*imprime:  Digite algo ou sair: fs
              Digite algo ou sair: sdf
              Digite algo ou sair: sair
              Fim!*/

  //O do while executa pelo menos uma vez antes de parar por causa da condição
  do {
    stdout.write('Digite algo ou sair: ');
    digitado = stdin.readLineSync()!;
  } while (digitado != 'sair');
}
