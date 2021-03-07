import 'dart:io';

void calculoIdade() {
  print('Digite uma idade:');
  var input = stdin.readLineSync();
  var idade = int.parse(input);

  if (idade > 50) {
    print('idoso');
  } else if (idade >= 18) {
    print('adulto');
  } else if (idade >= 12) {
    print('adolecente');
  } else {
    print('criança');
  }
}
