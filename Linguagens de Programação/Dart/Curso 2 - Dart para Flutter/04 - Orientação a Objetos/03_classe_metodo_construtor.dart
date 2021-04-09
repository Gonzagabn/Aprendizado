//Cada classe só pode ter um único construtor padrão

class Data {
  int? dia;
  int? mes;
  int? ano;
  //O método construtor é o que permite criar objetos a partir de uma classe
  //Aqui o construtor "Data()" está disponível normalmente
}

class Data2 {
  int? dia;
  int? mes;
  int? ano;
  //Por padrão o método construtor é implicito com essa característica:
  Data2() {} //Em toda classe esse construtor fica escondido e é o padrão
}

class Data3 {
  int? dia;
  int? mes;
  int? ano;
  //O construtor pode receber os parâmetros da classe de forma explicita:
  Data3(int dia, int mes, int ano) {} //Agora esse é o construtor padrão
  //O construtor padrão "Data3()" não existe mais
  //Os parâmetros passam a ser obrigatórios
  //Os parâmetros de mesmo nome da classe e do construtor vão retornar null
}

class Data4 {
  int? dia;
  int? mes;
  int? ano;
  //Agora com um construtor que define os valores de dia, mes e ano:
  Data4(int diaInicial, int mesInicial, int anoInicial) {
    dia = diaInicial;
    /*Aqui é definido que o atributo "dia" da classe será setado com o mesmo
    parâmetro "diaInicial" do construtor*/
    mes = mesInicial;
    ano = anoInicial;
  }
}

//Formato melhor:
class Data5 {
  int? dia;
  int? mes;
  int? ano;
  Data5(int dia, int mes, int ano) {
    this.dia = dia; //O "this." vai acessar o atributo do objeto "data5"
    this.mes = mes; //Sem o "this." o atributo do objeto não será definido
    ano = ano; //Sem o "this." o atributo retorna "null"
  }
}

//Formato Padrão:
class Data6 {
  int dia;
  int mes;
  int ano;

  Data6(this.dia, this.mes, this.ano);
}

//Classe com parâmetros opcionais
class Data7 {
  int dia; //não precisa de "?" porque defini no construtor valor igual a 8
  int mes; //não precisa de "?" porque defini no construtor valor igual a 11
  int? ano; //"?" pra permitir que o valor pode ser "null"

  Data7([this.dia = 8, this.mes = 11, this.ano]); //'mes' e 'ano' opcionais
}

main() {
  var data1 = new Data(); //"Data()" é o método construtor da classe
  data1.dia = 10;
  data1.mes = 3;
  data1.ano = 1992;
  print("data1 é: ${data1.dia}/${data1.mes}/${data1.ano}");
  //imprime: data1 é: 10/3/1992

  var data2 = new Data2(); //"Data2()" funciona normalmento como o "Data()"
  data2.dia = 10;
  data2.mes = 3;
  data2.ano = 1992;
  print("data2 é: ${data2.dia}/${data2.mes}/${data2.ano}");
  //imprime: data2 é: 10/3/1992

  var data3 = new Data3(10, 3, 1992); //"Data3()" tem parâmetros obrigatórios
  print("data3 é: ${data3.dia}/${data3.mes}/${data3.ano}");
  //imprime: data3 é: null/null/null

  var data4 = new Data4(10, 3, 1992); //"Data4()" tem parâmetros obrigatórios
  print("data4 é: ${data4.dia}/${data4.mes}/${data4.ano}");
  //imprime: data4 é: 10/3/1992

  var data5 = new Data5(10, 3, 1992); //"Data5()" tem parâmetros obrigatórios
  print("data5 é: ${data5.dia}/${data5.mes}/${data5.ano}");
  //imprime: data5 é: 10/3/null

  var data6 = new Data6(10, 3, 1992); //"Data6()" tem parâmetros obrigatórios
  print("data6 é: ${data6.dia}/${data6.mes}/${data6.ano}");
  //imprime: data6 é: 10/3/1992

  var data7 = new Data7(); //"Data7()" não tem parâmetros obrigatórios
  print("data7 é: ${data7.dia}/${data7.mes}/${data7.ano}");
  //imprime: data7 é: 8/11/null
}
