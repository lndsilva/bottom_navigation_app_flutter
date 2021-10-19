import 'package:flutter/material.dart';

void main() => runApp(MyBottonNav());

class MyBottonNav extends StatefulWidget {
  //construtor de classe
  MyBottonNav({Key? key}) : super(key: key);

  _myBottonNav createState() => _myBottonNav();
}

class _myBottonNav extends State {
  var _pagina = 0;

  var paginas = [Text("Pagina 1"), Text("Pagina 2"), Text("Pagina 3")];

  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter BottonNav",
      home: Scaffold(
        body: Center(
          child: paginas.elementAt(_pagina),
        ),
        bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.announcement), title: Text('Pagina 1')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.cake), title: Text('Pagina 2')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.cloud), title: Text('Pagina 3')),
            ],
            currentIndex: _pagina,
            fixedColor: Colors.red,
            onTap: (int inIndex) {
              setState(() {
                _pagina = inIndex;
              });
            }),
      ),
    );
  }
}
