import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  static String routeName = '/contact-page';
  const AboutPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('contact_page'),
      ),
    );
  }
}
