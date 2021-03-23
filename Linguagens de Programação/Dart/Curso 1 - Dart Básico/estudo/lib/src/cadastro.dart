import 'dart:io';

List<Map<String, dynamic>> cadastros = [];

void cadastrarPessoa() {
  var condicao = true;
  print('\x1B[2J\x1B[0;0H');
  while (condicao) {
    print('Digite um comando');
    var comando = stdin.readLineSync();
    if (comando == 'sair') {
      print('Programa encerrado');
      condicao = false;
    } else if (comando == 'cadastro') {
      print('\x1B[2J\x1B[0;0H');
      cadastrar();
    } else if (comando == 'imprimir') {
      print(cadastros);
    } else {
      print('Esse comando não existe');
    }
  }
}

void cadastrar() {
  var cadastro = <String, dynamic>{};

  print('Digite o nome');
  cadastro['nome'] = stdin.readLineSync();

  print('Digite a idade');
  cadastro['idade'] = stdin.readLineSync();

  print('Digite a cidade');
  cadastro['cidade'] = stdin.readLineSync();

  print('Digite o estado');
  cadastro['estado'] = stdin.readLineSync();

  cadastros.add(cadastro);
}
