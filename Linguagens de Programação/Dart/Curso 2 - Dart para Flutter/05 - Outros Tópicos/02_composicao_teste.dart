import '02a_composicao_cliente.dart';
import '02b_composicao_produto.dart';
import '02c_composicao_venda_item.dart';
import '02d_composicao_venda_carrinho.dart';

main() {
  var vendaItem3 = VendaItem(
    quantidade: 3,
    produto: Produto(
      codigo: 1003,
      nome: 'Carne',
      preco: 30.0,
      desconto: 0.0,
    ),
  );

  var vendaMercado = VendaCarrinho(
    cliente: Cliente(
      nome: 'Luiz',
      cpf: '000.000.000-00',
    ),
    itens: <VendaItem>[
      VendaItem(
        quantidade: 1,
        produto: Produto(
          codigo: 1001,
          nome: 'Arroz',
          preco: 20.0,
          desconto: 0.1,
        ),
      ),
      VendaItem(
        quantidade: 1,
        produto: Produto(
          codigo: 1002,
          nome: 'Feijão',
          preco: 8.0,
          desconto: 0.25,
        ),
      ),
      vendaItem3,
    ],
  );

  print('O valor total da venda é: R\$ ${vendaMercado.valorTotal}');
  print('O nome do primeiro produto é: ${vendaMercado.itens[0].produto?.nome}');
  print('O CPF do cliente é: ${vendaMercado.cliente?.cpf}');
}
