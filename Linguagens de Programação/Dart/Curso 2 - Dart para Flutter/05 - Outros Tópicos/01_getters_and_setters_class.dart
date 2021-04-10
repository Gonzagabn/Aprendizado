//Getters e Setters são fundamentais para o encapsulamento

class Pessoa {
  String nome;
  int _idade; //O "_" torna a variável privada e invisível fora da classe
  double peso;
  double altura;

  Pessoa(this.nome, this._idade, this.peso, this.altura);

  //Getter:
  //O "get" faz com que "idade" se torne uma propriedade de um objeto "Pessoa()"
  int get idade {
    return this._idade;
  }

  //Setter:
  //O "set" permitirá alterações no atributo "_idade" de um objeto "Pessoa()"
  //É aqui no "set" que regras de alteração da variável serão implementadas
  void set idade(int novaIdade) {
    this._idade = novaIdade;
  }
}
