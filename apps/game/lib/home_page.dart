import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String name;
  HomePage(this.name);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Hello, $name")),
    );
  }
}
