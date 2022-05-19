import 'dart:convert';

List<Chapter> chapterFromJson(String str) => List<Chapter>.from(
      json.decode(str).map(
            (x) => Chapter.fromJson(x),
          ),
    );

String chapterToJson(List<Chapter> data) => json.encode(
      List<dynamic>.from(
        data.map(
          (x) => x.toJson(),
        ),
      ),
    );

class Chapter {
  Chapter({
    required this.chapterId,
    required this.chapterName,
    required this.sectionId,
    required this.unitId,
  });

  int chapterId;
  String chapterName;
  int sectionId;
  int unitId;

  factory Chapter.fromJson(Map<String, dynamic> json) => Chapter(
        chapterId: json["chapter_id"],
        chapterName: json["chapter_name"],
        sectionId: json["section_id"],
        unitId: json["unit_id"],
      );

  Map<String, dynamic> toJson() => {
        "chapter_id": chapterId,
        "chapter_name": chapterName,
        "section_id": sectionId,
        "unit_id": unitId,
      };
}
