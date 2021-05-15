import 'dart:io';

void calculoImc() {
  print('Digite seu peso');
  var textPeso = stdin.readLineSync();
  var peso = int.parse(textPeso!);

  print('Digite sua altura');
  var textAltura = stdin.readLineSync();
  var altura = double.parse(textAltura!);

  var imc = calcImcExpressao(peso, altura);
  imprimirResultado(imc);
}

double calcImcExpressao(int peso, double altura) {
  return peso / (altura * altura);
}

void imprimirResultado(double imc) {
  print('==============================');

  if (imc < 18.5) {
    print('Abaixo do peso');
  } else if (imc > 18.5 && imc <= 25) {
    print('Peso normal');
  } else if (imc > 25 && imc <= 30) {
    print('Sobrepeso');
  } else if (imc > 30 && imc <= 35) {
    print('Obesidade grau 1');
  } else if (imc > 35 && imc <= 40) {
    print('Odesidade grau 2');
  } else {
    print('Obesidade grau 3');
  }
}
