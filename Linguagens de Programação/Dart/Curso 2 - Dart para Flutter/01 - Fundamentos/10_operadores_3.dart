main() {
  int a = 3;
  int b = 4;

  //Operadores Unários
  a++; //Posfix sem urgência
  ++a; //Prefix com urgência
  a--; //Posfix sem urgência
  --a; //Prefix com urgência

  print(a++ == --b); //imprime: true (no momento da comparação a = 3 e b = 3)
  //Isso porque o operador ++ do "a++" será efetuado após o "==" e o "--b"

  print(a == b); //imprime: false (no momento da comparação a = 4 e b = 3)

  //Operadores Lógico Unários (NOT)
  print(!true); //imprime: false
  print(!false); //imprime: true

  bool x = false;
  print(!x); //imprime: true
}
