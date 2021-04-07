import 'package:freezed_annotation/freezed_annotation.dart';

import 'day_data.dart';

part 'day.g.dart';

@JsonSerializable()
class Day {
  String? day;
  String? dayShort;
  String? date;
  String? tempMin;
  String? tempMax;
  DayData? data;
  List<String>? temperatures;
  List<String>? winddirs;
  List<String>? windspeed;
  List<String>? precips;
  List<String>? precipprob;

  Day(
      {this.day,
      this.dayShort,
      this.date,
      this.tempMin,
      this.tempMax,
      this.data,
      this.temperatures,
      this.winddirs,
      this.windspeed,
      this.precips,
      this.precipprob});

  factory Day.fromJson(Map<String, dynamic> json) => _$DayFromJson(json);

  Map<String, dynamic> toJson() => _$DayToJson(this);
}
