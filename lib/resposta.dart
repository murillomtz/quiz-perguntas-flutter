import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String resposta;

  final void Function() fn;

  Resposta(this.resposta, this.fn);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.red, // background
          onPrimary: Colors.white, // foreground
        ),
        child: Text("$resposta"),
        onPressed: fn,
      ),
    );
  }
}
