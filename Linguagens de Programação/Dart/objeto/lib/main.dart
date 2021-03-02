import 'src/gato.dart';
import 'src/pessoa.dart';

void main(List<String> arguments) {
//Exemplo 1
  Pessoa pessoa = Pessoa(nome: "Gonzaga", idade: 28, sexo: "M");
  print(pessoa.nome);
  print(pessoa.idade);
  print(pessoa.sexo);
  //pessoa.otherNome = "Não consigo atribuir nada nessa variável";
  //print(pessoa.otherNome);
  print(pessoa.altura);
  print(pessoa.peso);

//Exemplo 2
  Gato gato = Gato(nome: "Juvenal", barulho: "Miau");
  print("Gato faz ${gato.barulho}");
}
