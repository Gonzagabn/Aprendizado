import 'humano.dart';

class Pessoa extends Humano {
  String? nome;
  int? idade;
  String? sexo;
//  String _nomeLocal = "variável local e segura";
//  final String otherNome = "isso aqui só pode ser instanciado uma vez";
  Pessoa({this.nome, this.idade, this.sexo});
}
