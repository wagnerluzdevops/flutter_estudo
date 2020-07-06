import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Dog {
  String nome;
  String foto;

  Dog(this.nome, this.foto);
}

class HelloListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body: _body(),
    );
  }

  _body() {
    List<Dog> dogs = [
      Dog("Jack Russel", "assets/images/dog1.png"),
      Dog("Labrador", "assets/images/dog2.png"),
      Dog("Pug", "assets/images/dog3.png"),
      Dog("Rottweiler", "assets/images/dog4.png"),
      Dog("Pastor", "assets/images/dog5.png"),
      Dog("Jack Russel", "assets/images/dog1.png"),
      Dog("Labrador", "assets/images/dog2.png"),
      Dog("Pug", "assets/images/dog3.png"),
      Dog("Rottweiler", "assets/images/dog4.png"),
      Dog("Pastor", "assets/images/dog5.png"),
      Dog("Jack Russel", "assets/images/dog1.png"),
      Dog("Labrador", "assets/images/dog2.png"),
      Dog("Pug", "assets/images/dog3.png"),
      Dog("Rottweiler", "assets/images/dog4.png"),
      Dog("Pastor", "assets/images/dog5.png"),
      Dog("Jack Russel", "assets/images/dog1.png"),
      Dog("Labrador", "assets/images/dog2.png"),
      Dog("Pug", "assets/images/dog3.png"),
      Dog("Rottweiler", "assets/images/dog4.png"),
      Dog("Pastor", "assets/images/dog5.png"),
    ];

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemCount: dogs.length,
      itemBuilder: (BuildContext context, int index) {
        Dog dog = dogs[index];

        return Stack(
          fit: StackFit.expand,
          children: <Widget>[
            _img(dog.foto),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.all(12),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Text(
                  dog.nome,
                  style: TextStyle(fontSize: 26, color: Colors.white),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  _img(String img) {
    return Image.asset(
      img,
      fit: BoxFit.cover,
    );
  }
}