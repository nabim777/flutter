import 'package:flutter/material.dart';
import 'package:game/home_page.dart';

class GamePage extends StatelessWidget {
  GamePage({Key? key}) : super(key: key);
  TextEditingController cName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Game Page"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: cName,
                  decoration: const InputDecoration(
                      label: Center(child: Text("Enter your Data"))),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (cName.text.isEmpty) return;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomePage(cName.text)),
                      );
                    },
                    child: Text("Continue"))
              ],
            ),
          ),
        ));
  }
}
