import 'dart:io';

main() {
  //Área da circunferência = PI * raio * raio

  const PI = 3.1415;
  /*"const" ou constante, porque o valor à ele atribuido é conhecido antes do 
  programa funcionar, ou seja, é conhecido no tempo de compilação, diferente
  do "final" que somente é conhecido em tempo de execução, ou, em runtime*/

  stdout.write('Informe o raio: '); //escreve sem quebrar linha
  /*"stdout" é a saída padrão (standart out) do dispositivo, exemplo: a Tela,
  a função "write" escreve na tela do dispositivo*/

  final entradaDoUsuario = stdin.readLineSync()!;
  final double raio = double.parse(entradaDoUsuario);
  /*final, porque ela não vai ser alterada depois da entrada no programa */

  print("O valor do raio é: " + raio.toString()); // escreve quebrando linha

  final area = PI * raio * raio;

  print("O valor da área é: " + area.toString());
}
