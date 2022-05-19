import 'dart:io';

void main() {
  print("Privacy Policy:\n");
  print("App Name:");
  String? app_name = stdin.readLineSync();

  print("\n\nContact Information:");
  String? contact_info = stdin.readLineSync();

  print("\n\nPersonally Identifiable information:");
  String? pii = stdin.readLineSync();

  print(
      "\n\nChoose app Type:\n1.free\n2. open source\n3.freemium\n4. Adcommercial\n5.Adsuppoted");
  int? num1 = int.parse(stdin.readLineSync()!);
  var app_type;
  switch (num1) {
    case 1:
      app_type = "free";
      break;

    case 2:
      app_type = "opensource";
      break;

    case 3:
      app_type = "freemium";
      break;

    case 4:
      app_type = "Adcommercial";
      break;

    case 4:
      app_type = "Adsupported";
  }

  print(
      "\n\nChoose mobile OS:\n1. Android\n2. ios\n3.kaios\n4. Android & ios\n5. Android\n6. ios & kaios");
  int? num2 = int.parse(stdin.readLineSync()!);
  var mobile_os;
  switch (num2) {
    case 1:
      mobile_os = "free";
      break;

    case 2:
      mobile_os = "opensource";
      break;

    case 3:
      mobile_os = "freemium";
      break;

    case 4:
      mobile_os = "Adcommercial";
      break;

    case 4:
      mobile_os = "Adsupported";
  }

  print("\n\nChoose owner Type:\n1. Individuals\n2. Company");
  int? num3 = int.parse(stdin.readLineSync()!);
  var owner_type;
  switch (num3) {
    case 1:
      owner_type = "Individuals";
      break;

    case 2:
      owner_type = "Company";
  }

  print("\n\nPolicy Effective Date in (MM/DD/YYYY):");
  String? date = stdin.readLineSync();

  print(
      "\n\nChoose include links to third party services:\n1. Google Play Services\n2. Facebook\n3.Admob");
  int? num4 = int.parse(stdin.readLineSync()!);
  var third_party;
  switch (num4) {
    case 1:
      third_party = "Google Play Services";
      break;

    case 2:
      third_party = "Facebook";
      break;

    case 3:
      third_party = "Admov";
      break;
  }
}
