import 'dart:convert';

List<Section> sectionFromJson(String str) => List<Section>.from(
      json.decode(str).map(
            (x) => Section.fromJson(x),
          ),
    );

String sectionToJson(List<Section> data) => json.encode(
      List<dynamic>.from(
        data.map(
          (x) => x.toJson(),
        ),
      ),
    );

class Section {
  Section({
    required this.sectionId,
    required this.sectionName,
  });

  int sectionId;
  String sectionName;

  factory Section.fromJson(Map<String, dynamic> json) => Section(
        sectionId: json["section_id"],
        sectionName: json["section_name"],
      );

  Map<String, dynamic> toJson() => {
        "section_id": sectionId,
        "section_name": sectionName,
      };
}
