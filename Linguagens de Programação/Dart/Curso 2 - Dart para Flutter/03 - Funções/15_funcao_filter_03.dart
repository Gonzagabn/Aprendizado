//Problema:
//Criar a própria implementação da função "where", com nome "filtrar"

//A função vai receber uma lista e uma função e retornar uma lista
List<GEN>? filtrar<GEN>(List<GEN> lista, bool Function(GEN) fn) {
  List<GEN> listaFiltrada = [];
  for (GEN elemento in lista) {
    if (fn(elemento)) {
      listaFiltrada.add(elemento);
    }
  }
  return listaFiltrada;
}

main() {
  var notas = [8.2, 7.3, 6.8, 5.4, 2.7, 9.3];
  var boasNotasFn = (double nota) => nota >= 7.5;

  var somenteNotasBoas = filtrar(notas, boasNotasFn);
  print(somenteNotasBoas); //imprime: [8.2, 9.3]

  var nomes = ['Ana', 'Bia', 'Rebeca', 'Gui', 'João'];
  var nomesGrandesFn = (String nome) => nome.length >= 5;
  print(filtrar(nomes, nomesGrandesFn)); //imprime: [Rebeca]
}
