//Write a program to multiply two floating-point numbers.
import 'dart:io';
void main()
{
  print("Enter the first number:");
  double? num1=double.parse(stdin.readLineSync()!);
  print("Enter the Second number:");
  double? num2=double.parse(stdin.readLineSync()!);
  double m = num1*num2;
  print("Multiplication:$m");
}