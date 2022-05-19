//Wap in dart to find month by number
import 'dart:io';
void main()
{
  print("Enter the number:");
  int? num=int.parse(stdin.readLineSync()!);
  switch(num)
  {
    case 1: print("Jan"); break;
    case 2: print("feb"); break;
    case 3: print("March"); break;
    case 4: print("jun"); break;
    case 5: print("july"); break;
    case 6: print("August"); break;
    case 7: print("Octuber"); break;
    default: print("Enter [1-7] value only");


  }
}