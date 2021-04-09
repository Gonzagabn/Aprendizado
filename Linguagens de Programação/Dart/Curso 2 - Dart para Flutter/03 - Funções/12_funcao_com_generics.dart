/*O retorno da função 'segundoElementoV1'será um elemento do tipo mais 
abrangente do Dart, que é definido como "Object"*/
Object segundoElementoV1(List lista) {
  return lista.length >= 2 ? lista[1] : null;
}

//Usando Generics:
//Aqui estamos definindo um tipo "E", que é genérico
E? segundoElementoV2<E>(List<E> lista) {
  return lista.length >= 2 ? lista[1] : null;
}

main() {
  var lista = [3, 6, 7, 12, 45, 78, 1];
  print(segundoElementoV1(lista)); //imprime: 6
  segundoElementoV2<int>(lista); //Aqui defini o tipo "E" como "int"
//segundoElementoV2<String>(lista); Aqui dá erro pq a lista é int e não String

  //Posso omitir "<int>" pq ele atribui por inferência que a lista é tipo "int"
  int? segundoElemento = segundoElementoV2(lista);
  print(segundoElemento); //imprime: 6
}
