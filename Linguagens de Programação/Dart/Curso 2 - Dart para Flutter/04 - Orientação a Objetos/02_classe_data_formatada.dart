class Data {
  int? dia; //Esse é um atributo (Atributo de Instância ou de Objeto)
  int? mes; //Atributo
  int? ano; //Atributo

  //Todo método tem disponível para uso, os atributos da classe

  //O método 'obterDataFormatada' cria "notação ponto" para todo objeto Data
  obterDataFormatada() {
    print('$dia/$mes/$ano'); //Agora esse método formata os dados e imprime
  }
  //A desvantagem de printar a data é que não podemos utilizar os valores

  //Melhor forma:
  String obterValorDaDataFormatada() {
    return '$dia/$mes/$ano'; //Agora o método retorna uma String "utilizável"
  }
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

  //Aqui o método faz a impressão
  dataAniversario.obterDataFormatada(); //imprime: 10/3/1992
  dataCompra.obterDataFormatada(); //imprime: 23/12/2021

  //Aqui o método retorna uma String que para aparecer precisa ser impressa
  print(dataAniversario.obterValorDaDataFormatada()); //imprime: 10/3/1992
  print(dataCompra.obterValorDaDataFormatada()); //imprime: 23/12/2021

  print(dataCompra);
  //imprime: "Instance of 'Data'" porque a dataCompra não é uma String

  print(dataCompra.toString()); //imprime: "Instance of 'Data'" também

  /*Por padrão, dentro da classe Data tem implicito um método toString() que
  converte o retorno da classe em uma representação textual que normalmente
  será "Instance of 'NomeDaClasse'"*/
}
