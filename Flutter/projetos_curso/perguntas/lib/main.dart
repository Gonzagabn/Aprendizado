import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(
    PerguntaApp()); // O componente PerguntaApp que foi passado para o runApp é a raiz de toda a arvore de componentes

//A classe PerguntaApp se torna widget porque herdanda as características da classe StateLessWidget
class PerguntaApp extends StatelessWidget {
  void responder() {
    print('Pergunta respondida!');
  }

  void Function() funcaoQueRetornaUmaOutraFuncao() {
    return () {
      print('Pergunta respondida #2!');
    };
  }

  @override //O @override é uma anotação que sobrescreve o método build da classe mãe StateLessWidget
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[0]),
            ElevatedButton(
              child: Text('Resposta 1'),
              onPressed: responder,
            ),
            ElevatedButton(
              child: Text('Resposta 2'),
              onPressed: responder,
            ),
            ElevatedButton(
              child: Text('Resposta 3'),
              onPressed: funcaoQueRetornaUmaOutraFuncao(),
            ),
          ],
        ),
      ),
    );
  }
}
