void main() {
  var conjunto = {0, 1, 2, 3, 4};
  print(conjunto.length);

  var notasDosAlunos = <String, double>{
    'Ana': 9.3,
    'Bia': 7.7,
    'Carlos': 5.5,
  };
  //Mostra chave
  for (var chave in notasDosAlunos.keys) {
    print('chave = $chave');
  }
  //Mostra valor
  for (var valor in notasDosAlunos.values) {
    print('valor = $valor');
  }
  //Mostra chave e valor
  for (var registro in notasDosAlunos.entries) {
    print('${registro.key} = ${registro.value}');
  }
}
