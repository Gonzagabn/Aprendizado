//O tipo "Map" é o que as variáveis se apresentam como chave e valor
//A função "map" transforma elementos de um tipo em outro gerando um conjunto
//A propriedade ".map" cria um conjunto e não uma lista
main() {
  var alunos = [
    {'nome': 'Alfredo', 'nota': 9.9},
    {'nome': 'Wilson', 'nota': 9.3},
    {'nome': 'Maria', 'nota': 8.7},
    {'nome': 'Guilherme', 'nota': 8.1},
    {'nome': 'Ana', 'nota': 7.6},
    {'nome': 'Ricardo', 'nota': 6.8},
  ];

  double Function(Map) pegarApenasNotas = (aluno) => aluno['nota'];
  var notas = alunos.map(pegarApenasNotas); //Transforma lista de Map em double
  print(notas); //imprime: (9.9, 9.3, 8.7, 8.1, 7.6, 6.8)
  print(notas is List); //imprime: false

  String Function(Map) pegarApenasONome = (aluno) => aluno['nome'];
  int Function(String) qtdeDeLetras = (texto) => texto.length;
//int Function(int) dobro = (numero) => numero * 2;
  var quantidadeDeLetras = alunos
      .map(pegarApenasONome) //(Alfredo, Wilson, Maria, Guilherme, Ana, Ricardo)
      .map(qtdeDeLetras); //Transforma lista de Map em String e depois em int
//    .map(dobro); //Dobra os valores e imprimiria: (14, 12, 10, 18, 6, 14)
  print(quantidadeDeLetras); //imprime: (7, 6, 5, 9, 3, 7)
}
