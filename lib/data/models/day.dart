import 'day_label.dart';
import 'temperature.dart';
import 'weather.dart';

class Day {
  Temperature? temps;
  Weather? weather;
  DayLabel? dayLabel;

  Day({this.temps, this.weather, this.dayLabel});

  Day.fromJson(Map<String, dynamic> json) {
    temps = json['temps'] != null
        ? Temperature.fromJson(Map.from(json['temps']))
        : null;
    weather = json['weather'] != null
        ? Weather.fromJson(Map.from(json['weather']))
        : null;
    dayLabel = json['dayLabel'] != null
        ? DayLabel.fromJson(Map.from(json['dayLabel']))
        : null;
  }

  @override
  String toString() => 'Day(temps: $temps, weather: $weather)';
}
