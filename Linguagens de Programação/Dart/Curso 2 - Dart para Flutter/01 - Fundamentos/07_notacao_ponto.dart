main() {
  double nota = 6.99.roundToDouble(); //".roudToDouble()" arredonda o número
  print(nota); //imprime valor de nota: 7

  double nota2 = 6.99.truncateToDouble(); //".truncateToDouble()" exclui decimal
  print(nota2); //imprime valor de nota2: 6

  print('TEXTO'.toLowerCase()); //imprime: texto (minúsculo)

  String s1 = 'Luiz Gonzaga';
  String s2 = s1.substring(0, 2); //pega as 3 primeiras letras: Lui
  String s3 = s2.toUpperCase(); //Transforma em maiúsculo: LUI
  String s4 = s3.padRight(10, '!'); //pega 10 carac. preenche o vazio com "!"
  print(s4); //imprime: LUI!!!!!!!

  String s5 = 'Luiz Gonzaga'.substring(0, 2).toLowerCase().padLeft(10, '!');
  print(s5); //imprime: !!!!!!!lui
}
