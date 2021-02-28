//Estudo de Dart
//Declaração de variáveis
import 'dart:io';

main() {
  TesteVariaveis();
  VerificarIdade();
}

TesteVariaveis() {
  var num1 = 3;
  var texto = "qualquer texto";
  var texto2 = " com outro";
  var textoconcatenado = texto + texto2;
  print(textoconcatenado);
  print(num1);
}

VerificarIdade() {
  print("Digite uma idade:");
  var textidade = stdin.readLineSync();
  var idade = int.parse(textidade!);
  print(idade);

  if (idade >= 18) {
    print("Parabéns você é maior de idade");
  } else {
    print("Você ainda é um guri menor de idade");
  }
}
