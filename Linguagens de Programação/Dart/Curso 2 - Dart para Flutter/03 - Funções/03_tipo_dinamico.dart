//Função do tipo "dynamic"

main() {
  juntar(1, 9);
  juntar('Bom ', 'Dia');
  String resultado = juntar('O valor de PI é: ', 3.1415);
  print(resultado);
}

/*O tipo 'dynamic' pode ser declarado, ou, é admitido quando
não se determina o tipo*/
juntar(dynamic a, b) {
  print(a.toString() + b.toString()); //imprime a concatenação dos parametros
  return a.toString() + b.toString(); //Aqui retorna uma String da concatenação
}
