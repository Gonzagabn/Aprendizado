import 'dart:math';

main() {
  var nota = Random().nextInt(11); //".nextInt" gera 'x' randomico, 0 =< x < 11
  print(nota); //imprime: algum valor de 0 à 10

  if (true) //O if só impacta no próximo comando e não afeta o que vem depois
    print('Aprovado!'); //Vai imprimir: Aprovado
  print('Fim!'); //imprime: Fim

  if (false) //O if só impacta no próximo comando e não afeta o que vem depois
    // ignore: dead_code
    print('Aprovado!'); //Não vai imprimir nada, porque o if retornou false
  print('Fim!'); //imprime: Fim

  print('-------------CASO 1-------------');
  print('Nota selecionada foi $nota');
  if (nota >= 7) {
    //if = SE
    print('Aprovado!'); //Só imprime se a condição "(nota >= 7)" for true
  } else {
    //else = SENÃO
    print('Reprovado!'); //Só imprime se a condição "(nota >= 7)" for false
  }

  print('-------------CASO 2-------------');
  print('Nota selecionada foi $nota');

  if (nota >= 9) {
    print('Qadro de Honra!');
  } else if (nota >= 7) {
    print('Aprovado!');
  } else if (nota >= 5) {
    print('Recuperação!');
  } else if (nota >= 4) {
    print('Recuperação + Trabalho!');
  } else {
    print('Reprovado!');
  }

  print('-------------CASO 3-------------'); //Retorna o mesmo do CASO 2
  print('Nota selecionada foi $nota');

  //Essa estrutura fica ruim para ser lida
  if (nota >= 9) {
    print('Qadro de Honra!');
  } else {
    if (nota >= 7) {
      print('Aprovado!');
    } else {
      if (nota >= 5) {
        print('Recuperação!');
      } else {
        if (nota >= 4) {
          print('Recuperação + Trabalho!');
        } else {
          print('Reprovado!');
        }
      }
    }
  }
}
