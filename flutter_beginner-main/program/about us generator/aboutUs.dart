import 'function.dart';
import 'dart:io';

void main() {
  print("About us program:\n");
  print("Company Name");
  String? cName = stdin.readLineSync();

  print("\nContact information:");
  String? cInfo = stdin.readLineSync();

  print("\n\nCompany date of Established:");
  String? cDOF = stdin.readLineSync();

  print("\n\nFounder Name:");
  String? cFounderName = stdin.readLineSync();

  print("\n\nCompay Sector:");
  String? cSector = stdin.readLineSync();

  print("\n\nCompany Vision:");
  String? cVision = stdin.readLineSync();

  print("\n\nCompany Moto or slogon:");
  String? cMoto = stdin.readLineSync();

  print("\n\nCompany Focus:");
  String? cFocus = stdin.readLineSync();

  print("\nEmail:");
  String? cEmail = stdin.readLineSync();

  print("\n\nCompany location:");
  String? cLocation = stdin.readLineSync();

  //Starting of Printing
  //print(headGenerator("$companyName", "$appName"));
  print(Generator("$cName", "$cInfo", "$cDOF", "$cFounderName", "$cSector",
      "$cVision", "$cMoto", "$cFocus", "$cEmail", "$cLocation"));
}
