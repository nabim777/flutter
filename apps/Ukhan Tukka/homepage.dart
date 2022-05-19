import 'dart:math';
import 'package:flutter/material.dart';
import 'package:nepali_ukhan_tukka/about_us.dart';
import 'package:nepali_ukhan_tukka/data.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int number = 0;

  changeNumber() {
    setState(() {
      number = Random().nextInt(ukhanData.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nepali Ukhan Tukka'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.policy),
              title: Text('Privacy Policy'),
              onTap: () {
                // launchUrl("aa");
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About Us'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutUs()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Exit'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 250,
              width: double.infinity,
              child: Card(
                child: Center(
                  child: Text(
                    ukhanData[number],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            width: 150,
            child: OutlinedButton(
              child: const Text(
                'अर्को ',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                changeNumber();
              },
            ),
          ),
        ],
      ),
    );
  }
}
