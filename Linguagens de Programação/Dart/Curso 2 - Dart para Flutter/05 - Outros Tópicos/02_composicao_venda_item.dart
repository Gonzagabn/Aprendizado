import '02_composicao_produto.dart';

class VendaItem {
  Produto produto;
  int quantidade;
  double? _precoDaVenda;

  VendaItem({this.produto, this.quantidade = 1});

  //Ulitizando o "get" para criar uma propriedade "precoComDesconto"
  //Isso porque a classe Produto é dona dos atributos "preco" e "desconto"
  //Quem acessa essa propriedade nem sabe se é ou não um getter
  //Essa é uma boa prática para não precisar fazer isso fora da classe
  double get precoComDesconto {
    return (1 - desconto) * preco!;
  }
}
