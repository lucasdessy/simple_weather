import 'dart:convert';

class Weather {
  String? wind;
  String? tab_sun;
  String? precip;

  Weather({this.wind, this.tab_sun, this.precip});

  @override
  String toString() =>
      'Weather(wind: $wind, tab_sun: $tab_sun, precip: $precip)';

  Map<String, dynamic> toMap() {
    return {
      'wind': wind,
      'tab_sun': tab_sun,
      'precip': precip,
    };
  }

  factory Weather.fromMap(Map<String, dynamic> map) {
    return Weather(
      wind: map['wind'],
      tab_sun: map['tab_sun'],
      precip: map['precip'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Weather.fromJson(String source) =>
      Weather.fromMap(json.decode(source));
}
