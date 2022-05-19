// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MaterialApp(
//     title: "Ball Score App",
//     home: HomePage(),
//   ));
// }

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int brazil = 0;
//   int spain = 0;

//   void addBrazil() {
//     setState(() {
//       brazil++;
//     });
//   }

//   void lessBrazil() {
//     if (brazil == 0) return;
//     setState(() {
//       brazil--;
//     });
//   }

//   void addSpain() {
//     setState(() {
//       spain++;
//     });
//   }

//   void reductSpain() {
//     if (spain == 0) return;
//     setState(() {
//       spain--;
//     });
//   }

//   void reset() {
//     setState(() {
//       spain = 0;
//       brazil = 0;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Column(
//                   children: [
//                     const Text(
//                       'Brazil',
//                       style: TextStyle(fontSize: 42),
//                     ),
//                     Container(
//                       width: 150,
//                       height: 150,
//                       color: Colors.black87,
//                       child: Center(
//                         child: Text(
//                           "$brazil",
//                           style: const TextStyle(
//                               color: Colors.white, fontSize: 72),
//                         ),
//                       ),
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         ElevatedButton(
//                             onPressed: () {
//                               addBrazil();
//                             },
//                             child: const Icon(Icons.add)),
//                         ElevatedButton(
//                             onPressed: () {
//                               lessBrazil();
//                             },
//                             child: const Icon(Icons.remove))
//                       ],
//                     )
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     const Text(
//                       'Spain',
//                       style: TextStyle(fontSize: 42),
//                     ),
//                     Container(
//                       width: 150,
//                       height: 150,
//                       color: Colors.black87,
//                       child: Center(
//                         child: Text(
//                           "$spain",
//                           style: const TextStyle(
//                               color: Colors.white, fontSize: 72),
//                         ),
//                       ),
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         ElevatedButton(
//                             onPressed: () {
//                               addSpain();
//                             },
//                             child: const Icon(Icons.add)),
//                         ElevatedButton(
//                             onPressed: () {
//                               reductSpain();
//                             },
//                             child: const Icon(Icons.remove))
//                       ],
//                     )
//                   ],
//                 )
//               ],
//             ),
//             MaterialButton(
//                 color: Colors.teal,
//                 minWidth: 250,
//                 height: 50,
//                 child: const Text('Reset '),
//                 onPressed: () {
//                   reset();
//                 })
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: homepage(),
    ),
  );
}

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nalem7"),
      ),
      body: Column(
        children: [
          Center(
            child: Row(
              children: [
                Container(child: Text("Nabin")),
                Container(child: Text("Ale")),
              ],
            ),
          ),
          Row(
            children: [
              Container(child: Text("Nabin")),
              Container(
                child: Text("Ale"),
              ),
            ],
          ),
          Container(child: Text("Ale")),
          Container(child: Text("Magar")),
        ],
        // children: [
        //   Container(child: Text("Nabin")),
        //   Container(child: Text("Nabin")),
        //   Container(child: Text("Ale")),
        //   Container(child: Text("Magar")),
        // ],
      ),
    );
  }
}
