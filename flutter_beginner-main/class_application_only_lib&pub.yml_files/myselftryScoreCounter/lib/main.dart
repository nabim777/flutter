import 'package:flutter/material.dart';
//import 'package:flutter/cupertino.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Football scorecounter"),
            centerTitle: true,
          ),
          body: homePage()),
    ),
  );
}

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int numberA = 0;
  int numberB = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //column1
        Expanded(
          //row for team
          child: Row(
            children: <Widget>[
              Expanded(
                //flex: 5,
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                    color: const Color.fromARGB(255, 255, 0, 0),
                    height: 80.0,
                    child: const Center(
                        child: Text(
                      "Team A",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
              ),
              Expanded(
                //flex: 5,
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                    color: const Color.fromARGB(255, 252, 255, 53),
                    height: 80.0,
                    child: const Center(
                      child: Text(
                        "Team B",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        //Column 2 score
        Expanded(
          //row1 for team A
          child: Row(
            children: <Widget>[
              Expanded(
                //flex: 5,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    height: 240.0,
                    width: 240.0,
                    child: Center(
                        child: Text(
                      "$numberA",
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 60,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
              ),
              Expanded(
                //flex: 5,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    height: 240.0,
                    width: 240.0,
                    child: Center(
                        child: Text(
                      "$numberB",
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 60,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
              ),
            ],
          ),
        ),

        //column 3 buttons
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Expanded(
            child: Row(
              children: <Widget>[
                //for + teamA
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              numberA++;
                            });
                          },
                          child: const Text(
                            "+",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      //for - team A
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (numberA == 0) return;
                              numberA--;
                            });
                          },
                          child: const Text(
                            "-",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                //another team + and -
                Expanded(
                  child: Row(
                    children: <Widget>[
                      //for +
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              numberB++;
                            });
                          },
                          child: const Text(
                            "+",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      //for -
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (numberB == 0) return;
                              numberB--;
                            });
                          },
                          child: const Text(
                            "-",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Container(
              color: Colors.blueAccent,
              height: 50.0,
              width: 90.0,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    numberA = 0;
                    numberB = 0;
                  });
                },
                child: const Text(
                  "Reset",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              //child: Center(child: Text("Reset")),
            ),
          ),
        ),
      ],
    );
  }
}
