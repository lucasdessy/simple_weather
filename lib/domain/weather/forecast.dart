import 'package:json_annotation/json_annotation.dart';
import 'package:simple_weather/domain/weather/search/item_suggestion.dart';

import 'day.dart';
part 'forecast.g.dart';

@JsonSerializable()
class Forecast {
  final ItemSuggestion suggestion;
  final List<Day> days;

  Forecast({required this.suggestion, required this.days});

  factory Forecast.fromJson(Map<String, dynamic> json) =>
      _$ForecastFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastToJson(this);
}
