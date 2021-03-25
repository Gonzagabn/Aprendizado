import 'dart:math';

main() {
  var nota = Random().nextInt(11);
  print('A nota sorteada foi: $nota');

  //O 'switch' é ótimo para valores específicos, o 'if' é melhor para intervalos
  switch (nota) {
    case 10:
    case 9:
      print('Quadro de Honra!'); //Se nota = 9 ou 10, imprime essa linha
      print('Parabéns!'); //Se nota = 9 ou 10, imprime essa linha
      break;
    case 8:
      print('Aprovado!'); //Se nota = 8, imprime 'Aprovado'
      break;
    default:
      print('Nota Inválida'); // Se nota = 7, 6, 5, 4, 3, 2, 1 imprime a linha
  }
}
