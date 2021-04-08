main() {
  saudarPessoa1('João', 25);
//saudarPessoa1(25, 'João'); Não aceita porque está na ordem incorreta

  saudarPessoa2(nome: 'Maria', idade: 26);
  saudarPessoa2(idade: 26, nome: 'Maria');

  imprimirData();
  imprimirData(dia: 10, mes: 3);
  imprimirData(ano: 1992);
}

//Sem parâmetros nomeados
saudarPessoa1(String nome, int idade) {
  print('Olá $nome nem parece que você tem $idade anos!');
}

//Com parâmetros nomeados
saudarPessoa2({String? nome, int? idade}) /*Para ser nomeado, é só colocar{}*/ {
  print('Olá $nome nem parece que você tem $idade anos!');
}

//'imprimirData' com parâmetros nomeados
imprimirData({int dia = 1, int mes = 1, int ano = 1970}) {
  print('$dia/$mes/$ano');
}
