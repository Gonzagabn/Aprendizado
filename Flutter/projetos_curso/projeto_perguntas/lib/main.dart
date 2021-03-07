import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(
    PerguntaApp()); // O componente PerguntaApp que foi passado para o runApp é a raiz de toda a arvore de componentes

//A classe PerguntaApp se torna widget porque herdanda as características da classe StateLessWidget
class PerguntaApp extends StatelessWidget {
  @override //O @override é uma anotação que sobrescreve o método build da classe mãe StateLessWidget
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Text('Estou no corpo do Widget'),
      ),
    );
  }
}
