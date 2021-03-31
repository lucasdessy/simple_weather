import 'dart:convert';

class Temperature {
  String? tempMax;
  String? tempMin;

  Temperature({this.tempMax, this.tempMin});

  @override
  String toString() => 'Temperature(tempMax: $tempMax, tempMin: $tempMin)';

  Map<String, dynamic> toMap() {
    return {
      'tempMax': tempMax,
      'tempMin': tempMin,
    };
  }

  factory Temperature.fromMap(Map<String, dynamic> map) {
    return Temperature(
      tempMax: map['tempMax'],
      tempMin: map['tempMin'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Temperature.fromJson(String source) =>
      Temperature.fromMap(json.decode(source));
}
