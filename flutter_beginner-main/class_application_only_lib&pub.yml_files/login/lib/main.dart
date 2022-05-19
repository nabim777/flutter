import 'package:flutter/material.dart';
import 'package:login/form.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "More on Widget",
      //theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.home),
          title: const Text('Widgets Practise'),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.info))],
        ),
        body: form(),
      ),
    );
  }
}
