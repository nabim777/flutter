import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../functions.dart';
import '../models/chapter.dart';

class HtmlReaderScreen extends StatefulWidget {
  static const routeName = "/htmlreader";
  const HtmlReaderScreen({Key? key}) : super(key: key);
  @override
  State<HtmlReaderScreen> createState() => _HtmlReaderScreenState();
}

class _HtmlReaderScreenState extends State<HtmlReaderScreen> {
  bool isadLoading = false;

  @override
  void initState() {
    super.initState();
    setState(() {
      isadLoading = true;
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    final chapter = ModalRoute.of(context)?.settings.arguments as Chapter;
    return Scaffold(
        appBar: AppBar(
          title: Text(chapter.chapterName),
          centerTitle: true,
        ),
        body: WebView(
          onWebViewCreated: (controller) {
            controller.loadHtmlString(loadContent(chapter.chapterId));
          },
        ));
  }
}
