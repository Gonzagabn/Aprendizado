import 'dart:io';

List<String> produtos = [];

void carrinhoCompras() {
  var condicao = true;
  while (condicao) {
    print('Adicione um produto');
    var text = stdin.readLineSync();
    if (text == 'sair') {
      print('Programa encerrado');
      condicao = false;
    } else if (text == 'imprimir') {
      imprimir();
    } else if (text == 'remover') {
      remover();
    } else {
      produtos.add(text!);
      print('\x1B[2J\x1B[0;0H');
    }
  }
}

void imprimir() {
  for (var i = 0; i < produtos.length; i++) {
    print('ITEM $i - ${produtos[i]}');
  }
}

void remover() {
  print('Qual item deseja remover?');
  imprimir();
  var item = int.parse(stdin.readLineSync()!);
  produtos.removeAt(item);
  print('Item removido');
}
