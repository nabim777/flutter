//class of Body
import 'package:flutter/material.dart';
import 'package:login/main.dart';

class form extends StatefulWidget {
  @override
  State<form> createState() => _formState();
}

class _formState extends State<form> {
  TextEditingController cFullName = TextEditingController();

  TextEditingController cAdress = TextEditingController();

  TextEditingController cPhone = TextEditingController();

  String name = "";
  String adress = "";
  String phone = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Write Your Information",
          style: myStyle,
        ),
        Padding(
          padding: const EdgeInsets.all(40.0),
          child: TextField(
            controller: cFullName,
            decoration: InputDecoration(label: Text('Enter Your Name')),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(40.0),
          child: TextField(
            controller: cAdress,
            decoration: InputDecoration(label: Text('Enter your Adress')),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(40.0),
          child: TextField(
            controller: cPhone,
            decoration: InputDecoration(label: Text('Enter your Phone Number')),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        ElevatedButton(
            onPressed: () {
              //debugPrint('Name is:${cFullName.text}');
              setState(() {
                name = cFullName.text;
                adress = cAdress.text;
                phone = cPhone.text;
              });
            },
            child: Text("Sign in")),
        SizedBox(
          height: 50,
        ),
        Text("Name:$name"),
        Text("Adress:$adress"),
        Text("Phone no:${cPhone.text}"),
      ],
    );
  }
}

const myStyle = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
