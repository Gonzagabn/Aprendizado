//Objetivo: somar todas as notas e mostrar o resultado da soma

//Abordagem padrão:
import 'dart:io';

double somaPadrao() {
  var notas = [7.3, 5.4, 7.7, 8.1, 5.5, 4.9, 9.1, 10.0];
  var total = 0.0;

  for (var nota in notas) {
    total += nota;
  }
  return total;
}

//Abordagem com a função "reduce"
main() {
  var notas = [7.3, 5.4, 7.7, 8.1, 5.5, 4.9, 9.1, 10.0];
  var total = notas.reduce(somar); //transforma uma lista em qualquer coisa
  print('\n$total'); //imprime: 58
  print(somaPadrao()); //imprime: 58

  var nomes = ['Ana', 'Bia', 'Carlos'];
  print(nomes.reduce(juntar)); //imprime: AnaBiaCarlos
}

//A única exigencia é que o tipo do 'acumulador' e da função tem que ser igual
double somar(double acumulador, double elemento) {
  stdout.write("$acumulador'$elemento|");
  //imprime: 7.3'5.4|12.7'7.7|20.4'8.1|28.5'5.5|34.0'4.9|38.9'9.1|48.0'10.0|
  return acumulador + elemento;
}

String juntar(String acumulador, String elemento) {
  return '$acumulador$elemento';
}
