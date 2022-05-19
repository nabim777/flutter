import 'function.dart';
import 'dart:io';

void main(List<String> args) {
  //App Name
  print("Privacy Policy:\n");
  print("App Name:");
  String? appName = stdin.readLineSync();

  //company Name
  print("\nCompany name:");
  String? companyName = stdin.readLineSync();

  //contact information
  print("\nPhone Number:");
  String? phoneNumber = stdin.readLineSync();

  print("\nEmail:");
  String? email = stdin.readLineSync();

  //personal identifiable information
  print("\n\nPersonally Identifiable information:");
  String? pii = stdin.readLineSync();

  print("\n\nAppType:");
  String? appType = stdin.readLineSync();

  print("\n\nPolicy Effective Date:");
  String? date = stdin.readLineSync();

  print("\n\nChoose include links to third party services:");
  String? thirdParty = stdin.readLineSync();

  // print("\nApp name:$appName");
  // print("\nCompany name:$companyName");
  // print("\nPhone Number:$phoneNumber");
  // print("\nEmail:$email");
  // print("\nPersonally Identifiable information:$pii");
  // print("\nApp Type:$appType");
  // print("\nPolicy Effective Date:$date");
  // print("\nInclude links to third party services:$thirdParty");

  //Starting of Printing
  print(headGenerator("$companyName", "$appName"));
  print(informationCollection16("$pii", "$thirdParty"));
  print(informationCollection7("$date", "$email", "$phoneNumber"));
}
