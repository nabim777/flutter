import 'dart:convert';

List<Unit> unitFromJson(String str) => List<Unit>.from(
      json.decode(str).map(
            (x) => Unit.fromJson(x),
          ),
    );

String unitToJson(List<Unit> data) => json.encode(
      List<dynamic>.from(
        data.map(
          (x) => x.toJson(),
        ),
      ),
    );

class Unit {
  Unit({
    required this.unitId,
    required this.unitName,
    required this.sectionId,
  });

  int unitId;
  String unitName;
  int sectionId;

  factory Unit.fromJson(Map<String, dynamic> json) => Unit(
        unitId: json["unit_id"],
        unitName: json["unit_name"],
        sectionId: json["section_id"],
      );

  Map<String, dynamic> toJson() => {
        "unit_id": unitId,
        "unit_name": unitName,
        "section_id": sectionId,
      };
}
