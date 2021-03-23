/*
    - Números (int e double)
    - Texto, ou, sequencia de caractres (String) 
    - Booleano (bool)
*/

main() {
  int n1 = 3;
  double n2 = (-5.67).abs(); //o ".abs()" é uma funcionalidade do valor
  double n3 = double.parse('12.765');
  num n4 = 6; //"num" é a classe pai de "int" e "double"
  print(n1.abs() + n2 + n3 + n4);

  n4 = 6.7;
  print(n1.abs() + n2 + n3 + n4);

  String s1 = 'Bom';
  String s2 = ' dia';
  print(s1 + s2.toUpperCase() + '!!!'); //".toUpperCase()" muda para maiúsculo

  bool estaChovendo = true;
  bool muitoFrio = false;
  print(estaChovendo && muitoFrio);

  dynamic x = 'Um texto bem legal'; //aqui o "x" assume o tipo String
  print(x);

  x = 123; //aqui o "x" assume o tipo int
  print(x);
}
