main() {
  var nomes = ['Gabi', 'Luiz', 'Gustavo', 'Junior'];
  nomes.add('Josi'); //adiciona 'Josi' na lista de nomes
  print(nomes); //imprime: [Gabi, Luiz, Gustavo, Junior, Josi]
  nomes = ['Bi', 'Lu', 'Gu']; //posso atribuir uma nova lista pq o tipo é "var"

  final frutas = ['Banana', 'Maçã', 'Kiwi', 'Manga'];
  frutas.add('Morango'); //adiciona 'Morango' na lista de frutas
  print(frutas); //imprime: [Banana, Maçã, Kiwi, Manga, Morango]
  //frutas = []; não consigo redefinir a lista pq ela é do tipo "final"
  //Na situação acima, posso alterar os conteúdos, mas não a lista

  final turmas = const ['T1', 'T2', 'T3', 'T4']; //const faz elementos imutáveis
  //turmas.add('T5'); não consigo alterar(add/remove) qualquer elemento da lista
  print(turmas); //imprime: [T1, T2, T3, T4]
  //turmas = []; não consigo redefinir a lista pq ela é do tipo "final"
  //Na situação acima, não posso alterar os elementos, nem a lista

  const carros = ['Gol', 'Polo', 'Uno', 'Ka']; //const faz toda a lista imutável
  //const carros = const ['Gol', 'Polo', 'Uno', 'Ka']; tem o mesmo efeito
  //carros.add('X1'); não consigo alterar(add/remove) qualquer elemento da lista
  print(carros); //imprime: [Gol, Polo, Uno, Ka]
  //carros = []; não consigo redefinir a lista pq ela é do tipo "const"
  //Na situação acima, não posso alterar os elementos, mas posso mudar a lista
}
