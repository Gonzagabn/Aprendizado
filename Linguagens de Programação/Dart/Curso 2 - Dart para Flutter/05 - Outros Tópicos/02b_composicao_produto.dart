class Produto {
  int? codigo;
  String? nome;
  double? preco;
  double desconto; //percentual (0.5 = 50%)

  Produto({this.codigo, this.nome, this.preco, this.desconto = 0});

  //Ulitizando o "get" para criar uma propriedade "precoComDesconto"
  //Isso porque a classe Produto é dona dos atributos "preco" e "desconto"
  //Quem acessa essa propriedade nem sabe se é ou não um getter
  //Essa é uma boa prática para não precisar fazer isso fora da classe
  double get precoComDesconto {
    return (1 - desconto) * preco!;
  }
}
