import 'dart:math';

void executarNomeado({Function? fnPar, Function? fnImpar}) {
  var sorteado = Random().nextInt(10);
  print('O valor sorteado é $sorteado');
  sorteado % 2 == 0 ? fnPar!() : fnImpar!();
}

void executarPosicional(Function fnPar, Function fnImpar) {
  var sorteado = Random().nextInt(10);
  print('O valor sorteado é $sorteado');
  sorteado % 2 == 0 ? fnPar() : fnImpar();
}

main() {
  var minhaFnPar = () => print('O valor é par!');
  var minhaFnImpar = () => print('O valor é impar!');

  executarNomeado(fnPar: minhaFnPar, fnImpar: minhaFnImpar);
  executarPosicional(minhaFnPar, minhaFnImpar);
}
