main() {
  //Operadores Atribuição (binários/infix)

  double a = 2;

  a = a + 3; //retorna 2 + 3 = 5
  a += 3; //retorna 5 + 3 = 8
  a -= 2; //retorna 8 - 2 = 6
  a *= 4; //retorna 6 * 4 = 24
  a /= 3; //retorna 24 / 3 = 8
  a %= 2; //retorna o resto da divisão (8 / 2) = 0

  print(a); //imprime: 0

  //Operadores Relacionaios (binários/infix) -> O resultado sempre é BOOL
  print(3 > 2); //imprime: true (MAIOR)
  print(3 >= 2); //imprime: true (MAIOR OU IGUAL)
  print(3 < 2); //imprime: false (MENOR)
  print(3 <= 2); //imprime: false (MENOR OU IGUAL)
  print(3 != 3); //imprime: false (DIFERENTE, OU, NÃO IGUAL)
  print(3 == 3); //imprime: true (IGUAL)
  print(3 == '3'); //imprime: false (IGUAL)
}
