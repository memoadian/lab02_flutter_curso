import 'package:flutter/material.dart';

class AdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Administrar Amigos"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Text('Admin Page'),
          ),
        ],
      ),
    );
  }
}
