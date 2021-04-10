import '02a_composicao_cliente.dart';
import '02c_composicao_venda_item.dart';

class VendaCarrinho {
  Cliente? cliente;
  List<VendaItem> itens;

  //"itens" para ser inicializado como uma lista vazia precisa do "const"
  VendaCarrinho({this.cliente, this.itens = const []});

  //Método "valorTotal" será uma soma que retorna o preço total da venda
  double get valorTotal {
    return itens
        .map((item) => item.preco * item.quantidade) //criando a lista do valor
        .reduce((t, a) => t + a); //Vai somando os valores
  }
}
