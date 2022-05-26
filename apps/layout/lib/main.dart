import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: 'Layout management',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('layout widget'),
          ),
          body: Container(
            height: 200.0,
            width: double.infinity,
            padding: EdgeInsets.all(70),
            margin: EdgeInsets.all(30),
            color: Colors.red,
            child: Text("Hello World!", style: TextStyle(fontSize: 30)),
          ))));
}
