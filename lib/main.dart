import 'package:flutter/material.dart';

import 'homepage.dart';

void main() => runApp(UkhanTukka());

class UkhanTukka extends StatelessWidget {
  const UkhanTukka({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ukhan Tukka",
      home: HomePage(),
      theme: ThemeData.dark(),
    );
  }
}
