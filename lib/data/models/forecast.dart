import 'package:simple_weather/data/models/day.dart';

class Forecast {
  String cityName;
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
  Forecast({
    required this.cityName,
    this.humidity,
    this.days,
    this.day,
    this.rainprob,
    this.date,
    this.windspeeds,
    this.winddirs,
    this.precips,
    this.cloudiness,
    this.temperatures,
  });

  @override
  String toString() {
    return 'Forecast(humidity: $humidity, days: $days, day: $day, rainprob: $rainprob, date: $date, windspeeds: $windspeeds, winddirs: $winddirs, precips: $precips, cloudiness: $cloudiness, temperatures: $temperatures)';
  }

  Map<String, dynamic> toMap() {
    return {
      'cityName': cityName,
      'humidity': humidity,
      'days': days?.map((x) => x.toMap()).toList(),
      'day': day,
      'rainprob': rainprob,
      'date': date,
      'windspeeds': windspeeds,
      'winddirs': winddirs,
      'precips': precips,
      'cloudiness': cloudiness,
      'temperatures': temperatures,
    };
  }

  factory Forecast.fromMap(Map<String, dynamic> map, {String? cityName}) {
    return Forecast(
      cityName: map['cityName'] ?? cityName ?? '',
      humidity: List<String>.from(map['humidity']),
      days: List<Day>.from(
          map['days']?.map((x) => Day.fromMap(Map<String, dynamic>.from(x)))),
      day: map['day'],
      rainprob: List<String>.from(map['rainprob']),
      date: map['date'],
      windspeeds: List<String>.from(map['windspeeds']),
      winddirs: List<String>.from(map['winddirs']),
      precips: List<String>.from(map['precips']),
      cloudiness: List<String>.from(map['cloudiness']),
      temperatures: List<String>.from(map['temperatures']),
    );
  }
}
