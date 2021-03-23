/*
    - List
    - Map
    - Set
*/

main() {
  List aprovados = ['Ana', 'Carlos', 'Daniel', 'Rafael']; //Lista ou array
  print(aprovados); //imprime a lista toda

  var reprovados = ['Ana', 'Carlos', 'Daniel', 'Rafael']; //ACEITA REPETIÇÃO
  print(reprovados is List); //o "is" vai retornar 'true' ou 'false'
  print(reprovados);
  print(reprovados.elementAt(0)); //imprime o 1º elemento, onde indice = 0: Ana
  print(reprovados[2]); //imprime o 3º elemento: Daniel
  print(reprovados.length); //imprime o tamanho da lista: 4

  Map<String, String> telefones = {
    //NÃO ACEITA CHAVES REPETIDAS
    //Estrutura do tipo "chave: valor"
    'João': '+55 (11) 90000-0000',
    'José': '+55 (13) 90000-0001',
    'Jorge': '+55 (67) 90000-0002',
    'Joarez': '+55 (65) 90000-0003',
    'Josué': '+55 (31) 90000-0004',
  };
  print(telefones);
  print(telefones['João']); //sai o valor da chave 'João': '+55 (11) 90000-0000'
  print(telefones.length); //imprime o número de elementos do map: 5
  print(telefones.keys); //imprime todas as chaves
  print(telefones.values); //imprime todos os valores
  print(telefones.entries); //imprime todas as chaves e valores

  var times = {'Brasil', 'Alemanha', 'Japão', 'Holanda'}; //NÃO ACEITA REPETIÇÃO
  print(times is Set); //imprime true
  print(times.length); //imprime tamanho: 4
  times.add('Itália'); //adiciona Itália no conjunto de times
  print(times.length); //imprime tamanho: 5
  print(times.contains('Japão')); //imprime true
}
