//O objetivo é calcular a média da turma
main() {
  var alunos = [
    /*O "var" definiu alunos como "List<Map<String, Object>>"*/
    {'nome': 'Alfredo', 'nota': 9.9},
    {'nome': 'Wilson', 'nota': 9.3},
    {'nome': 'Maria', 'nota': 8.7},
    {'nome': 'Guilherme', 'nota': 8.1},
    {'nome': 'Ana', 'nota': 7.6},
    {'nome': 'Ricardo', 'nota': 6.8},
  ];

  var total = alunos
      .map((aluno) => aluno['nota']) //gera a lista de notas
      .map((nota) => (nota as double)) //converte a lista de Object para double
      .reduce((t, a) => t + a); //soma os valores das notas

  print('A média é: ${total / alunos.length}'); //imprime: A média é: 8.4

  var melhoresNotas = alunos
      .map((aluno) => aluno['nota']) //gera a lista de notas
      .map((nota) => (nota as double).roundToDouble()) //converte e arredonda
      .where((nota) => nota >= 8.5); //pega os valores >= 8.5

  var totalMaiores = melhoresNotas.reduce((t, a) => t + a); //soma as notas
  print('A média top é: ${totalMaiores / melhoresNotas.length}');
  //imprime: A média top é: 9.333333333333334
}
