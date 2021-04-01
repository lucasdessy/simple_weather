import 'day.dart';

class Forecast {
  late String cityName;
  late List<Day> days;

  Forecast({required this.cityName, required this.days});

  Forecast.fromJson(Map<String, dynamic> json, {String? cityName}) {
    this.cityName = json['cityName'] ?? cityName ?? '';
    if (json['days'] != null) {
      days = <Day>[];
      json['days'].forEach((v) {
        days.add(Day.fromJson(Map.from(v)));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['days'] = days.map((v) => v.toJson()).toList();
    data['cityName'] = cityName;
    return data;
  }
}
