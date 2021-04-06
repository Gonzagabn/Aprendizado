main() {
/* Desafio - Imprimir isso:
#
##
###
####
#####
######
Usando FOR, mas não podendo controlar o laço com valor numérico!
*/

//Soluçao 1: (própria)
  var simbolo = ['#', '##', '###', '####', '#####', '######'];
  for (var simbolos in simbolo) {
    print(simbolos);
  }

//Soluçao 2: (curso)
  var valor = '#';
  for (int i = 0; i < 6; i++) {
    print(valor);
    valor += '#';
  }

//Soluçao 3: (curso)
  for (var valor = '#'; valor != '#######'; valor += '#') {
    print(valor);
  }
}
