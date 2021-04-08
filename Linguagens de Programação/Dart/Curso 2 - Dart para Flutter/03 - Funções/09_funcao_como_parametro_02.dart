import 'dart:io';

void executarPorNVezes(int quantidade, Function(String) fn, String valor) {
  for (int i = 0; i < quantidade; i++) {
    fn(valor);
  }
}

int executarPorNVezes2(
    int quantidade, String Function(String) fn, String valor) {
  String textoCompleto = '';
  for (int i = 0; i < quantidade; i++) {
    textoCompleto += fn(valor);
  }
  return textoCompleto.length;
}

main() {
  print('Teste');
  executarPorNVezes(5, print, 'Muito legal');

  var meuPrint = (String valor) {
    stdout.write(valor);
    return valor;
  };
  int tamanho = executarPorNVezes2(5, meuPrint, 'Muito bom ');
  print('O tamanho da String é: $tamanho');
}
