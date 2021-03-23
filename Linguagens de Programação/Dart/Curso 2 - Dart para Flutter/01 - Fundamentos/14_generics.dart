main() {
  var listaCoisas = ['maçã', true, 123, 4.56]; //Lista de objetos(heterogêneos)
  print(listaCoisas); //imprime: [maçã, true, 123, 4.56]

  //Generics em listas:
  List<String> frutas = ['maça', 'banana', 'côco']; //Lista de 'String'
  //frutas.add(123); não consigo adicionar valor 'int' na lista de 'String'
  //Esse erro acima não permite o programa funcionar porque é um erro em tempo de compilação
  print(frutas); //imprime: [maça, banana, côco]

  //print(frutas[100]);
  /*Aqui já produz um erro em runtime, pois somente durante 
  a execução o programa percebe que não há elemento no indice 100 da lista*/

  //Generics em maps
  Map<String, double> salarios = {
    'gerente': 19345.78,
    'vendedor': 16345.80,
    'estagiário': 600.00,
  };

  print(
      salarios); //imprime: {gerente: 19345.78, vendedor: 16345.8, estagiário: 600.0}

  /*Generics é o nome dado do ponto de vista de quem construiu a classe, porque
  ela é algo do tipo "abstract class Map<K, V> {}" recebendo uma chave e um valor
  que pode assumir qualquer tipo de variável, exemplo: <String, String>, <int, int>,
  <List, String>*/
}
