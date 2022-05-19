import 'dart:io';

void main() {
  print("enter random pass length:");
  String? passLength = stdin.readLineSync();
  //important should do
  try {
    int myLength = int.parse(passLength!);
    String Pass = PassGenerator(myLength);
    print(Pass);
  } catch (ex) {
    print("Invalid Input");
  }
}

String PassGenerator(int? llength) {
  var alphabets = [
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'i',
    'j',
    'k',
    'l',
  ];

  var alphabetsC = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
  ];

  var numeric = [1, 2, 3, 4, 5, 6, 7, 8, 9];

  var symbols = ['_', '#', '%', '\$'];

  String Password = "";

  var allitems = [...alphabets, ...alphabetsC, ...numeric, ...symbols];
  allitems.shuffle();

  for (int i = 0; i<llength!; i++) {
    if (llength>allitems.length) {
      print("Invalid length");
      break;
    }
    Password += allitems[i].toString();
  }
  return Password;
}