import 'dart:io';

void main() {
  // print("\n\nChoose owner Type:\n1. Individuals\n2. Company");
  // int? num3 = int.parse(stdin.readLineSync()!);
  // var companyName;
  // if (num3 == 1) {
  //   print("Enter the Individuals name:");
  //   String? companyName = stdin.readLineSync();
  // } else if (num3 == 2) {
  //   print("Enter the Individuals name:");
  //   String? companyName = stdin.readLineSync();
  // } else {
  //   print("Choose [1 or 2] only");
  // }

  print("\n\nChoose owner Type:\n1. Individuals\n2. Company");
  int? num3 = int.parse(stdin.readLineSync()!);
  switch (num3) {
    case 1:
      {
        //ownerType = "Individuals";
        print("Enter the Individuals name:");
        String? companyName = stdin.readLineSync();
        print("$companyName");
      }

      break;

    case 2:
      {
        print("Enter the Company name:");
        String? companyName = stdin.readLineSync();
        print("$companyName");
      }
  }
  // switch (num3) {
  //   case 1:
  //     ownerType = "Individuals";
  //     print("Enter the Individuals name:");
  //     String? companyName = stdin.readLineSync();
  //     break;

  //   case 2:
  //     ownerType = "Company";
  //     print("Enter the Company name:");
  //     String? companyName = stdin.readLineSync();
  // }
}
