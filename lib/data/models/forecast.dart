import 'package:simple_weather/data/models/day.dart';

class Forecast {
  List<String>? humidity;
  List<Day>? days;
  String? day;
  List<String>? rainprob;
  String? date;
  List<String>? windspeeds;
  List<String>? winddirs;
  List<String>? precips;
  List<String>? cloudiness;
  List<String>? temperatures;

  Forecast(
      {this.humidity,
      this.days,
      this.day,
      this.rainprob,
      this.date,
      this.windspeeds,
      this.winddirs,
      this.precips,
      this.cloudiness,
      this.temperatures});

  Forecast.fromJson(Map<String, dynamic> json) {
    humidity = json['humidity'].cast<String>();
    if (json['days'] != null) {
      days = <Day>[];
      json['days'].forEach((v) {
        days!.add(Day.fromJson(Map.from(v)));
      });
    }
    day = json['day'];
    rainprob = json['rainprob'].cast<String>();
    date = json['date'];
    windspeeds = json['windspeeds'].cast<String>();
    winddirs = json['winddirs'].cast<String>();
    precips = json['precips'].cast<String>();
    cloudiness = json['cloudiness'].cast<String>();
    temperatures = json['temperatures'].cast<String>();
  }

  @override
  String toString() {
    return 'Forecast(humidity: $humidity, days: $days, day: $day, rainprob: $rainprob, date: $date, windspeeds: $windspeeds, winddirs: $winddirs, precips: $precips, cloudiness: $cloudiness, temperatures: $temperatures)';
  }
}
