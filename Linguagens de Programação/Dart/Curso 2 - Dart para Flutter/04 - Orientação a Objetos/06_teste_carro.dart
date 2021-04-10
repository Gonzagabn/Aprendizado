import '06_carro.dart';

main() {
  var c1 = new Carro(300);

  while (!c1.estaNoLimite()) {
    print('A velocidade atual é ${c1.acelerar()} Km/h');
  }

  print('O carro chegou no máximo com velocidade ${c1.velocidadeAtual} Km/h');

  while (!c1.estaParado()) {
    print('A velocidade atual é ${c1.frear()} Km/h');
  }

  //c1.velocidadeAtual = 500; Por enquanto nada me impede de causar esse erro
  print('O carro parou com velocidade ${c1.velocidadeAtual} Km/h');
}
