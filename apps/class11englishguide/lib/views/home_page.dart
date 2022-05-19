import 'package:class_11_english_guide/views/units_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../controllers/book_controller.dart';
import '../models/section.dart';
import 'about_screen.dart';
import 'chapters_screen.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final BookController controller = Get.put(BookController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Class 11 English Guide"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(),
              child: Text(
                'Class 11 English Guide',
                style: TextStyle(fontSize: 22),
              ),
              padding: EdgeInsets.only(top: 50, left: 10),
            ),
            ListTile(
              title: Text('About Us'),
              leading: Icon(Icons.info_outline),
              subtitle: Text('About Application'),
              onTap: () {
                Navigator.popAndPushNamed(context, AboutUsScreen.routeName);
              },
            ),
            ListTile(
              title: Text('Privacy Policy'),
              subtitle: Text('Policy Information'),
              leading: Icon(Icons.policy_outlined),
              onTap: () {
                launch("https://booksbazaar.com.np/privacypolicy/");
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Developed by: Booksbazaar Suppliers'),
            )
          ],
        ),
      ),
      body: FutureBuilder(
        future: controller.getSections(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Obx(
              () => ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: controller.sections.length,
                itemBuilder: (builder, index) {
                  Section section = controller.sections[index];
                  return GestureDetector(
                    onTap: () {
                      if (section.sectionId == 1) {
                        controller.selectedSection = 1;
                        controller.selectedUnit = 0;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (builder) => ChaptersScreen(),
                          ),
                        );
                      } else {
                        controller.selectedSection = 2;

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (builder) => UnitsScreen(),
                          ),
                        );
                      }
                    },
                    child: Container(
                      width: double.infinity,
                      height: 200,
                      margin: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 3,
                            offset: const Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            width: 180,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://www.pngarts.com/files/10/Vector-Reading-Book-PNG-Image-Background.png")),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ListTile(
                                  title: Text(
                                    section.sectionName,
                                    style: TextStyle(
                                      fontSize: 26.0,
                                      color: Colors.grey.shade700,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  subtitle: Text(
                                    "Total Chapters: ${controller.getTotalChaptersInSection(section.sectionId)}",
                                    style: const TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(
                color: Colors.teal.shade900,
              ),
            );
          }
        },
      ),
    );
  }
}
