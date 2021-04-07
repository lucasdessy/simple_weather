import 'package:freezed_annotation/freezed_annotation.dart';
part 'day_data.g.dart';

@JsonSerializable()
class DayData {
  String? wind;
  String? humidity;
  String? precip;

  DayData({this.wind, this.humidity, this.precip});

  factory DayData.fromJson(Map<String, dynamic> json) =>
      _$DayDataFromJson(json);

  Map<String, dynamic> toJson() => _$DayDataToJson(this);
}
