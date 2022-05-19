import 'package:flutter/services.dart';

class APIServices {
  fetchChapters() async {
    final String response =
        await rootBundle.loadString("assets/json/chapter.json");

    return response;
  }

  fetchUnits() async {
    final String response =
        await rootBundle.loadString("assets/json/unit.json");

    return response;
  }

  fetchSections() async {
    final String response =
        await rootBundle.loadString("assets/json/section.json");

    return response;
  }
}
