import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "My couter appp",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int number = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My counter app"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "$number",
              style: const TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  number++;
                });
              },
              child: const Text('Add'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (number == 0) return;
                  number--;
                });
              },
              child: const Text('less'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            number = 0;
          });
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
