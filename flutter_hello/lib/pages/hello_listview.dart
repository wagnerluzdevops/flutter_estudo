import 'package:flutter/material.dart';

class HelloListView extends StatefulWidget {
  @override
  _HelloListViewState createState() => _HelloListViewState();
}

class _HelloListViewState extends State<HelloListView> {
  var _gridOn = false;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView & GridView"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.list),
            onPressed: () {
              setState(() {
                _gridOn = false;
              });
            },
          ),
          IconButton(
            icon: Icon(Icons.grid_on),
            onPressed: () {
              setState(() {
                _gridOn = true;
              });
            },
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        child: _listView(),
      ),
    );
  }

  _listView() {
    List<String> dogs = List.generate(50, (idx) {
      return "assets/images/dog${idx % 5 + 1}.png";
    });

    return _gridOn
        ? GridView.builder(
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: dogs.length,
        itemBuilder: (context, idx) {
          return _listItem(dogs, idx);
        })
        : ListView.builder(
        itemExtent: 250,
        itemCount: dogs.length,
        itemBuilder: (context, idx) {
          return _listItem(dogs, idx);
        });
  }

  _listItem(List<String> dogs, int idx) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: _img(dogs[idx]),
        ),
        Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(color: Colors.black45),
          child: Text(
            "Dog ${idx + 1}",
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
        )
      ],
    );
  }

  Image _img(String img) {
    return Image.asset(
      img,
      fit: BoxFit.cover,
    );
  }
}