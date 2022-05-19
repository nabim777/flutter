//Write a program to find quotient and remainder of Two Integers.

import 'dart:io';
void main()
{
  print("Enter the Dividend(mathi ko):");
  int? de = int.parse(stdin.readLineSync()!);

  print("Enter the Divisor(tala ko)");
  int? d = int.parse(stdin.readLineSync()!);

  int reminder = de % d;
  double quotient = de/d;

  print("--------------------------");
  print("Quotient:${quotient.floor()}");
  print("reminder:$reminder");

}