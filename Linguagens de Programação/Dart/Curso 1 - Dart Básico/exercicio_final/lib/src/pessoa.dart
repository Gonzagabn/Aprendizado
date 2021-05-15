class Pessoa {
  String? nome;
  int? idade;
  double? altura;
  double? peso;
  //Calcular IMC
  double imc() => peso! / (altura! * altura!);
  //Verificar se é maior de idade
  bool maiorDeIdade() => idade! >= 18;
}
