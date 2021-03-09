import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'questionario.dart';
import 'resultado.dart';

main() => runApp(
    PerguntaApp()); // O componente PerguntaApp que foi passado para o runApp é a raiz de toda a arvore de componentes

//A classe PerguntaApp se torna widget porque herdanda as características da classe StateLessWidget
class _PerguntaAppState extends State<PerguntaApp> {
  int _perguntaSelecionada = 0;
  final _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': ['Preto', 'Azul', 'Cinza', 'Branco'],
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': ['Águia', 'Pinguin', 'Tigre', 'Capivara'],
    },
    {
      'texto': 'Qual é o seu professor favorito?',
      'respostas': ['Léo', 'Akita', 'Jacob', 'Filipe'],
    }
  ];

  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override //O @override é uma anotação que sobrescreve o método build da classe mãe StateLessWidget
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Perguntas'),
      ),
      body: temPerguntaSelecionada
          ? Questionario(
              perguntas: _perguntas,
              perguntaSelecionada: _perguntaSelecionada,
              quandoResponder: _responder,
            )
          : Resultado(),
    ));
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
