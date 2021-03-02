import 'package:cadastro/src/cadastro.dart';
import 'package:cadastro/src/calculo_idade.dart';
import 'package:cadastro/src/carrinho_compras.dart';
import 'package:cadastro/src/imc.dart';

main(List<String> arguments) {
  if (arguments[0] == "calculo-idade") {
    calculoIdade();
  } else if (arguments[0] == "carrinho-compras") {
    carrinhoCompras();
  } else if (arguments[0] == "imc") {
    calculoImc();
  } else if (arguments[0] == "cadastro") {
    cadastrarPessoa();
  } else {
    print("Esse programa não existe");
  }
}
