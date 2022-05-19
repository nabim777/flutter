import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController cAmountWithVat = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: cAmountWithVat,
          decoration: InputDecoration(
              keyboardType: TextInputType.number,
              labelText: "Enter Amount with VAT",
              hintText: "Hint:110000"),
        ),
        ElevatedButton(
          onPressed: () {
            if (cAmountWithVat.text.isNotEmpty) {}
          },
          child: Text("Calculate"),
        )
      ],
    );
  }
}
