//Write a program in Dart that finds simple interest. Formula= p * t * r / 100

import 'dart:io';
void main()
{
  print("Simple Interest Calculation");
  print("-----------------------------");
  print("Enter the principle:");
  int? p = int.parse(stdin.readLineSync()!);
  print("Enter the Time:");
  int? t = int.parse(stdin.readLineSync()!);
  print("Enter the Rate:");
  int? r = int.parse(stdin.readLineSync()!);
  double s=(p*t*r)/100;

  print("------------------------------");
  print("Simple Interest: $s");
}