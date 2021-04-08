int Function(int) somaParcial(int a) {
  int c = 0; // vai ficar visível na função interna
  return (int b) {
    return a + b + c;
  };
}

main() {
  print(somaParcial(2)(10)); //Passei '2' como parametro 'a' e '10' como 'b'

  var somaCom10 = somaParcial(10); //Aqui já amarra o primeiro parâmetro
  print(somaCom10(4));
  print(somaCom10(3));
  print(somaCom10(9));
}
