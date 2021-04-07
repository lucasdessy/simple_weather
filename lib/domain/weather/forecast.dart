import 'package:json_annotation/json_annotation.dart';

import 'day.dart';
part 'forecast.g.dart';

@JsonSerializable()
class Forecast {
  late String cityName;
  late List<Day> days;

  Forecast({required this.cityName, required this.days});

  factory Forecast.fromJson(Map<String, dynamic> json) =>
      _$ForecastFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastToJson(this);
}
