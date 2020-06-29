import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      appBar: AppBar(
        title: Text("Olá Flutter"),
      ),
      body: _body(),
    );
    return scaffold;
  }
}

Container _body() {
  // Não precisaria do Container, vou deixar pra ficar explicito !
  return Container(
    color: Colors.white,
    child: Center(
      child: _text(),
    ),
  );
}

Text _text() {
  return Text(
    "Olá Worlld",
    style: TextStyle(
      color: Colors.blue,
      fontSize: 30,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
      decoration: TextDecoration.underline,
      decorationColor: Colors.red,
      decorationStyle: TextDecorationStyle.wavy,
    ),
  );
}

Text _text2() {
  return Text("Hello");
}
