import '../05 - Outros Tópicos/01_getters_and_setters_class.dart';

main() {
  var informacoesDaPessoa = Pessoa('Luiz', 29, 82.5, 172.2);

  print(informacoesDaPessoa.nome); //imprime: Luiz
//print(informacoesDaPessoa._idade); Não funciona porque o atributo está privado
  print(informacoesDaPessoa.peso); //imprime: 82.5
  print(informacoesDaPessoa.altura); //imprime: 172.2

  //Utilizando o "getter"
  print(informacoesDaPessoa.idade); //Agora sim, imprime: 29

  //Utilizando o "setter"
  print(informacoesDaPessoa.idade = 30); //imprime: 30
}
