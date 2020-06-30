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
      child:  _button(),
    )
  );
}

RaisedButton _button() {
    return RaisedButton(
      color: Colors.blue,
      child: Text (
        "OK",
        style: TextStyle (
          color: Colors.white,
          fontSize: 20
        ),
      ),
      onPressed: () =>  _onClickOK()  // Usando arrow function !
      ,
    );
}

void _onClickOK() {
  print("Clicou no Botão OK");
}

Image _img() {
  return Image.asset(
      'assets/images/dog2.png',
    width: 300,
    height: 300,
    fit: BoxFit.fill
  );
//  return Image.network(
//      'https://preview.free3d.com/img/2017/04/2140154274204616055/0ejxkp2a-900.jpg');
}

Text _text() {
  return Text(
    "Olá World",
    style: TextStyle(
      color: Colors.blue,
      fontSize: 40,
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
