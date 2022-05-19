import 'package:get/get.dart';

import '../models/chapter.dart';
import '../models/section.dart';
import '../models/unit.dart';
import '../services/api_services.dart';

class BookController extends GetxController {
  var sections = <Section>[].obs;
  var chapters = <Chapter>[].obs;
  var units = <Unit>[].obs;
  int selectedSection = 1;
  int selectedUnit = 1;

  getSections() async {
    var response = await APIServices().fetchSections();
    sections.value = sectionFromJson(response);
    await getChapters();
    await getUnits();
    return sections;
  }

  getChapters() async {
    var response = await APIServices().fetchChapters();
    chapters.value = chapterFromJson(response);
    return chapters;
  }

  getUnits() async {
    var response = await APIServices().fetchUnits();
    units.value = unitFromJson(response);
    return units;
  }

  int getTotalChaptersInSection(int sectionId) {
    List<Chapter> filteredChapters =
        chapters.where((chapter) => sectionId == chapter.sectionId).toList();
    return filteredChapters.length;
  }

  List<Unit> getUnitsInSection(int sectionId) {
    List<Unit> filterUnits =
        units.where((unit) => sectionId == unit.sectionId).toList();
    return filterUnits;
  }

  List<Chapter> getTotalChaptersInUnit(int unitId, int sectionId) {
    List<Chapter> filteredChapters = [];
    for (int i = 0; i < chapters.length; i++) {
      Chapter chapter = chapters[i];
      if (unitId == chapter.unitId && sectionId == chapter.sectionId) {
        filteredChapters.add(chapter);
      }
    }
    return filteredChapters;
  }
}
