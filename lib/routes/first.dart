import 'package:flutter/material.dart';
import 'package:lab_02/routes/second.dart';

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(left: 20.0, top: 20.0),
            child: Text("Esta es mi ruta home"),
          ),
          Container (
            alignment: Alignment.center,
            child: RaisedButton(
              child: Text("Ir a la segunda ruta"),
              color: Colors.orangeAccent,
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => Second(),
                  ),
                );
              },
            ),
          )
        ]
      )
    );
  }

}