//Estudo de Dart
//Declaração de variáveis
import 'dart:io';

main() {
  teste_variaveis();
  verificar_idade();
}

teste_variaveis() {
  var num1 = 3;
  var texto = "qualquer texto";
  var texto2 = " com outro";
  var textoconcatenado = texto + texto2;
  print(textoconcatenado);
  print(num1);
}

verificar_idade() {
  print("Digite uma idade:");
  var textidade = stdin.readLineSync();
  int idade = int.parse(textidade!);
  if (idade >= 18) {
    print("Parabéns você é maior de idade");
  } else {
    print("Você ainda é um guri menor de idade");
  }
}

//Tipos de variáveis
void declar_variaveis() {
  int var1 = 1;
  double var2 = 1.2;
  String var3 = "texto";
  bool var4 = true;
  print('$var1 $var2 $var3 $var4');
}

//Loop
loop() {
//For
  for (int i = 0; i < 10; i++) {
    print("rodou $i");
  }
//While
  bool condicao = true;
  int x = 0;

  while (condicao) {
    print("rodou $x");
    if (x > 9) {
      condicao = false;
    }
    x++;
  }
}

//Função baseada em while
texto_de_saida() {
  bool condicao2 = true;
  while (condicao2) {
    print("Escreva um texto:");
    var texto3 = stdin.readLineSync();
    if (texto3 == "sair") {
      condicao2 = false;
      print("Programa finalizado");
    } else {
      print("Você digitou: $texto3");
    }
  }
}

//Arrays - Listas
array() {
  var nomes = [];
  //List<String> nomes = ["nome1","nome2","nome3"]; outra forma de declarar array

  bool condicao3 = true;

  while (condicao3) {
    print("Digite o nome");
    var texto4 = stdin.readLineSync();
    if (texto4 == "sair") {
      print("Programa finalizado");
      condicao3 = false;
    } else {
      nomes.add(texto4);
    }
    print("$nomes\n");
  }
  print(nomes.length); //entrega o tamanho do array
  print(nomes);
  print(nomes[4]); //chamar um item específico do array

  nomes.remove("nome 1"); //para remover pelo valor
  nomes.removeAt(5); //para remover pelo índice, ou, posição
}

//Função para limpar a tela
limpar_tela() {
  print("\x1B[2J\x1B[0;0H");
}

//Separar funções como feito acima, é o mesmo que modularizar o programa

//Variáveis Globais
/*Para declarar variáveis globais é só declarar fora de qualquer escopo*/

//Map é um array onde se nomeia as posições (muito parecido com um json)
map() {
  var maps = {
    "nome": "Luiz Gonzaga",
    "idade": 28,
    "cidade": "Campo Grande",
    "estado": "Mato Grosso do Sul",
  };
  print(maps["nome"]);
}

//Tipagem de Maps
map2() {
  Map<String, dynamic> maps = {
    "nome": "Luiz Gonzaga",
    "idade": 28,
    "cidade": "Campo Grande",
    "estado": "Mato Grosso do Sul"
  };
  print(maps);
}

//Criando um cadastro (criando keys dinamicamente)
List<Map<String, dynamic>> cadastros = [];

cadastrar() {
  Map<String, dynamic> cadastro = {};

  print("Digite o nome");
  var nome = stdin.readLineSync();
  cadastro["nome"] = nome;

  print("Digite a idade");
  var idade = stdin.readLineSync();
  cadastro["idade"] = idade;

  print("Digite a cidade");
  var cidade = stdin.readLineSync();
  cadastro["cidade"] = cidade;

  print("Digite o estado");
  var estado = stdin.readLineSync();
  cadastro["estado"] = estado;

  cadastros.add(cadastro);
}
//Exemplos de Null Safety

treinamento_null() {
  String? nome; // A interrogação permite que a variável receba valor nulo
  print(nome);

  String? textoNumeroX = stdin.readLineSync();
  int numeroX = int.parse(
      textoNumeroX!); //Aqui a ! valida a entrada da variavel na função
  print(numeroX);
}

//Classes
