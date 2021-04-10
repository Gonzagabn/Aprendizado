import './05_classe_pessoa.dart'; //Puxa a classe Pessoa do outro arquivo

main() {
  var p1 = Pessoa();
  p1.nome = 'João';

  print('O nome da pessoa é ${p1.nome}');
}
