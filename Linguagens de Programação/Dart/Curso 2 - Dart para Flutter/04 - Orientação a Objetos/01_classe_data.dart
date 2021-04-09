//A estrutura da classe é: class NomeDaClasse {}
//Uma função dentro da classe é um método

//A classe é um modelo, ou um novo tipo de variável, que contém atributos
//A partir da classe, criamos objetos ou instâncias, que são conjuntos de dados
//que tem as características da classe, ou modelo, criado
class Data {
  int? dia;
  int? mes;
  int? ano;
}

main() {
  //Data agora é um tipo, um modelo de dados
  var dataAniversario = new Data(); //O "new" não é obrigatório
  dataAniversario.dia = 10;
  dataAniversario.mes = 3;
  dataAniversario.ano = 1992;

  Data dataCompra = Data();
  dataCompra.dia = 23;
  dataCompra.mes = 12;
  dataCompra.ano = 2021;

  print('${dataAniversario.dia}/${dataAniversario.mes}/${dataAniversario.ano}');
  //imprime: 10/3/1992
  print('${dataCompra.dia}/${dataCompra.mes}/${dataCompra.ano}');
  //imprime: 23/12/2021
}
