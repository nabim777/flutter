import 'package:flutter/material.dart';
import 'package:vatcalculator/home_page.dart';

void main() {
  runApp(MaterialApp(
    title: "Nalem7",
    theme: ThemeData(primarySwatch: Colors.red),
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("VAT Calculators")),
        //backgroundColor: Color(value),
      ),
      body: HomePage(),
    );
  }
}
