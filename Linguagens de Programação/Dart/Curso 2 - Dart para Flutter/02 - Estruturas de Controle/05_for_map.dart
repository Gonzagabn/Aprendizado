main() {
  Map<String, double> notas = {
    'João': 9.1,
    'Maria': 9.9,
    'Pedro': 7.1,
    'Tiago': 8.5,
    'Paulo': 10.0,
  };

  for (String nome in notas.keys) {
    print('Nome do aluno é: $nome');
  }
  /*imprime:  Nome do aluno é: João
              Nome do aluno é: Maria
              Nome do aluno é: Pedro
              Nome do aluno é: Tiago
              Nome do aluno é: Paulo*/

  for (var nota in notas.values) {
    print('A nota do aluno é: $nota');
  }
  /*imprime:  A nota do aluno é: 9.1
              A nota do aluno é: 9.9
              A nota do aluno é: 7.1
              A nota do aluno é: 8.5
              A nota do aluno é: 10.0*/

  for (String nome in notas.keys) {
    print('Nome do aluno é: $nome e a nota é ${notas[nome]}'); //valor relaivo
  }
  /*imprime:  Nome do aluno é: João e a nota é 9.1
              Nome do aluno é: Maria e a nota é 9.9
              Nome do aluno é: Pedro e a nota é 7.1
              Nome do aluno é: Tiago e a nota é 8.5
              Nome do aluno é: Paulo e a nota é 10.0*/

  for (var registro in notas.entries) /*Forma mais comum (entries=registro)*/ {
    print('O ${registro.key} tem nota ${registro.value}');
  }
  /*imprime:  O João tem nota 9.1
              O Maria tem nota 9.9
              O Pedro tem nota 7.1
              O Tiago tem nota 8.5
              O Paulo tem nota 10.0*/
}
