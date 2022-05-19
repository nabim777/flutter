import 'package:class_11_english_guide/views/reader_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/book_controller.dart';
import '../models/chapter.dart';

class ChaptersScreen extends StatelessWidget {
  ChaptersScreen({Key? key}) : super(key: key);
  final BookController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chapter Screen"),
        centerTitle: true,
        backgroundColor: Colors.teal.shade900,
      ),
      body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: controller
              .getTotalChaptersInUnit(
                  controller.selectedUnit, controller.selectedSection)
              .length,
          itemBuilder: (ctx, index) {
            Chapter chapter = controller.getTotalChaptersInUnit(
                controller.selectedUnit, controller.selectedSection)[index];
            return Container(
              margin: const EdgeInsets.all(5),
              child: Column(
                children: [
                  ListTile(
                    onTap: () {
                      Navigator.of(context).pushNamed(
                          HtmlReaderScreen.routeName,
                          arguments: (chapter));
                    },
                    leading: CircleAvatar(
                      child: Text(
                        "${(index + 1)}",
                        style: const TextStyle(),
                        textAlign: TextAlign.center,
                      ),
                      backgroundColor: Colors.transparent,
                      radius: 30,
                      foregroundColor: Colors.grey.shade800,
                    ),
                    title: Text(chapter.chapterName),
                    subtitle: const Text("Click to read"),
                    trailing: IconButton(
                      icon: Icon(
                        Icons.star,
                        color: Colors.yellow.shade900,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 70.0),
                    child: Divider(
                      thickness: 1.4,
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
