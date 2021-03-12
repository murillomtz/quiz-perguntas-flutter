import 'package:flutter/material.dart';
import 'package:quiz_flutter/resposta.dart';

import './questao.dart';

main() {
  runApp(new PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  final List<Map<String, Object>> _perguntas = [
    {
      'texto': 'Qual a sua cor favorita?',
      'resposta': [
        'Preto',
        'Vermelho',
        'Azul',
        'Verde',
      ],
    },
    {
      'texto': 'Qual é seu animal favorito?',
      'resposta': [
        'Coelho',
        'Cobra',
        'Elefante',
        'Leão',
      ],
    },
    {
      'texto': 'Qual é seu instrutor favorito?',
      'resposta': [
        'Murillo',
        'Messias',
        'Arthur',
        'Alercio',
      ],
    },
  ];

  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }

    print(_perguntaSelecionada);
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostar = temPerguntaSelecionada
        ? _perguntas[_perguntaSelecionada]['resposta']
        : null;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Perguntas"),
        ),
        body: temPerguntaSelecionada
            ? Column(
                children: [
                  Questao(_perguntas[_perguntaSelecionada]['texto']),
                  //'...' ele pega os elementos da lsita resposta
                  //e joga dentro da lista children.
                  //'.map' faz uma transformação de uma
                  // lista de para outra idependente do tipo
                  ...respostar.map((t) => Resposta(t, _responder)).toList(),
                ],
              )
            : Center(
                child: Text(
                  'Parabéns',
                  style: TextStyle(fontSize: 29),
                ),
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
