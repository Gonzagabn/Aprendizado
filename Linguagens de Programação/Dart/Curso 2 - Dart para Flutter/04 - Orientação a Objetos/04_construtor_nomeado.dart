class Data {
  int? dia;
  int? mes;
  int? ano;

  Data([this.dia = 1, this.mes = 1, this.ano = 1970]); //Construtor padrão

  //Named Constructors:
  //Cria-se a estrutura chave valor adicionando {} na declaração dos parâmetros
  Data.nomeDoConstrutor({this.dia, this.mes, this.ano});
  Data.ultimoDiaDoAno(this.ano) {
    dia = 31;
    mes = 12;
  }

  String obterDataFormatada() /*Pega os valores da data e converte em String*/ {
    return '$dia/$mes/$ano';
  }

  String toString() /*Converte "Instance of 'Data'" em data formatada*/ {
    return obterDataFormatada();
  }
}

main() {
  var data = Data.nomeDoConstrutor(ano: 2021, dia: 9, mes: 4);
  print('Data: $data'); //imprime: Data: 9/4/2021

  print(Data.ultimoDiaDoAno(2023));
}
