//Write a program to print an integer entered by the user.

import 'dart:io';
void main()
{
  print("Enter integers:");
  int? num=int.parse(stdin.readLineSync()!);
  print("You have entered this integers: $num");
}