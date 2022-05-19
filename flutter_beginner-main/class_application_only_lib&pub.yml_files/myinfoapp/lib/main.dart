import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      //debugShowCheckedModeBanner: false,
      title: "My Profile app",
      home: Scaffold(
          appBar: AppBar(
            title: const Text('My Profile Apps'),
            centerTitle: true, //center ma leunxa title
          ),
          body: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              // Image.network(
              //   "https://avatars.githubusercontent.com/u/61624650?s=400&u=e9b3bacbc890f9b46ff395969eae14caf3640c20&v=4",
              //    height: 250, width:double.infinity,),
              Image.asset(
                "img/me.jpg",
                height: 250,
                width: double.infinity,
              ),

              const SizedBox(
                height: 20,
              ),
              const Text(
                'Nabin Magar',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),

              const SizedBox(
                height: 10,
              ),
              const Text("Why? so serious"),

              const SizedBox(
                height: 10,
              ),
              Text(
                  "Interest: ${interest[0]}, ${interest[1]}, ${interest[2]}, ${interest[3]}, ${interest[4]}, ${interest[5]}"),

              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                color: Colors.blueAccent,
                child: Text('Mobile Number: 9819140159',
                    style: TextStyle(color: Colors.white)),
                onPressed: () {},
              ),
            ],
          )),
    ),
  );
}

var interest = [
  'Coding',
  'Research',
  'Video Editing',
  'Networking',
  'Gaming',
  'Drawing'
];
