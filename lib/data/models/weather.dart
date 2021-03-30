import 'package:simple_weather/data/models/temperature.dart';

class Weather {
  String day;
  String date;
  List<Temperature> temperatures;
  Weather({
    required this.day,
    required this.date,
    required this.temperatures,
  });
}
