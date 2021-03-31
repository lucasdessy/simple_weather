import 'dart:convert';

class DayLabel {
  String? short;
  String? long;

  DayLabel({this.short, this.long});

  @override
  String toString() => 'DayLabel(short: $short, long: $long)';

  Map<String, dynamic> toMap() {
    return {
      'short': short,
      'long': long,
    };
  }

  factory DayLabel.fromMap(Map<String, dynamic> map) {
    return DayLabel(
      short: map['short'],
      long: map['long'],
    );
  }

  String toJson() => json.encode(toMap());

  factory DayLabel.fromJson(String source) =>
      DayLabel.fromMap(json.decode(source));
}
