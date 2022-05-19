//Write a program to print your name in Dart.
// void main()
// {
//   print("Nabin" + " "+ "Ale");
// }
import 'dart:io';
 
void main()
{
    print("Enter your name?");
    String? name = stdin.readLineSync();
    print("My name is $name");
}