import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/book_controller.dart';
import '../models/unit.dart';
import 'chapters_screen.dart';

class UnitsScreen extends StatelessWidget {
  UnitsScreen({Key? key}) : super(key: key);
  final BookController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Units Screen"),
        centerTitle: true,
      ),
      body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount:
              controller.getUnitsInSection(controller.selectedSection).length,
          itemBuilder: (ctx, index) {
            Unit unit =
                controller.getUnitsInSection(controller.selectedSection)[index];
            return Container(
              margin: const EdgeInsets.all(5),
              child: Column(
                children: [
                  ListTile(
                    onTap: () {
                      controller.selectedUnit = unit.unitId;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (builder) => ChaptersScreen(),
                        ),
                      );
                    },
                    leading: CircleAvatar(
                      child: Text(
                        "Unit\n${(index + 1)}",
                        style: const TextStyle(),
                        textAlign: TextAlign.center,
                      ),
                      backgroundColor: Colors.transparent,
                      foregroundColor: Colors.grey.shade800,
                    ),
                    title: Text(unit.unitName),
                    subtitle: Text(
                        "Total Chapters: ${controller.getTotalChaptersInUnit(unit.unitId, unit.sectionId).length}"),
                    trailing: IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.teal.shade900,
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
