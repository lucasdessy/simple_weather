import 'dart:convert';

import 'day_label.dart';
import 'temperature.dart';
import 'weather.dart';

class Day {
  Temperature? temps;
  Weather? weather;
  DayLabel? dayLabel;
  Day({this.temps, this.weather, this.dayLabel});

  Map<String, dynamic> toMap() {
    return {
      'temps': temps?.toMap(),
      'weather': weather?.toMap(),
      'dayLabel': dayLabel?.toMap(),
    };
  }

  factory Day.fromMap(Map<String, dynamic> map) {
    return Day(
      temps: Temperature.fromMap(Map<String, dynamic>.from(map['temps'])),
      weather: Weather.fromMap(Map<String, dynamic>.from(map['weather'])),
      dayLabel: DayLabel.fromMap(Map<String, dynamic>.from(map['dayLabel'])),
    );
  }

  String toJson() => json.encode(toMap());

  factory Day.fromJson(String source) => Day.fromMap(json.decode(source));
}
