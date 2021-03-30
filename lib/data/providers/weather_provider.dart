import 'package:cloud_functions/cloud_functions.dart';
import 'package:simple_weather/data/models/temperature.dart';
import 'package:simple_weather/data/models/weather.dart';

abstract class WeatherProvider {
  Future<Weather> getWeather(String cityId);
}

class WeatherFirebaseProvider
// implements WeatherProvider
{
  // ignore: unused_field
  final FirebaseFunctions _functions;

  WeatherFirebaseProvider({FirebaseFunctions? functions})
      : _functions = functions ?? FirebaseFunctions.instance;
}

class WeatherMockProvider implements WeatherProvider {
  @override
  Future<Weather> getWeather(String cityId) async {
    return Weather(
      date: 'Terça-feira',
      day: '30/03',
      temperatures: [
        Temperature(temperatue: '24°'),
      ],
    );
  }
}
