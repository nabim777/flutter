import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  static String routeName = '/about-page';
  const AboutPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Page'),
      ),
    );
  }
}
