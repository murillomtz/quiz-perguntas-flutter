import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  String resposta;

  Function fn;
  Resposta(this.resposta, this.fn);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text("$resposta"),
      onPressed: fn,
    );
  }
}
