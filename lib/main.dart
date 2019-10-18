import 'package:flutter/material.dart';
import 'routes/HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Save A Friend",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Salva a un amigo"),
        ),
        body: HomePage(),
      )
    );
  }
}