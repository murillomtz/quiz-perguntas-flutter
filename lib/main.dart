import 'package:flutter/material.dart';
import 'package:quiz_flutter/resposta.dart';

import './questao.dart';

main() {
  runApp(new PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      perguntaSelecionada++;
    });
    print('Perguta respondida');
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual a sua cor favorita?',
      'Qual é seu animal favorito?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Perguntas"),
        ),
        body: Column(
          children: [
            Questao(perguntas[perguntaSelecionada]),
            Resposta("resposta 1", _responder),
            Resposta("resposta 2", _responder),
            Resposta("resposta 3", _responder),
          ],
        ),
      ),
    );
  }
}

@override
class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
