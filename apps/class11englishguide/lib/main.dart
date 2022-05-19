import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'views/about_screen.dart';
import 'views/home_page.dart';
import 'views/reader_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: HomePage(),
      routes: {
        HtmlReaderScreen.routeName: (context) => const HtmlReaderScreen(),
        AboutUsScreen.routeName: (context) => const AboutUsScreen(),
      },
    ),
  );
}
