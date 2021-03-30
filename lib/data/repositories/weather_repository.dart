import 'package:simple_weather/data/models/weather.dart';
import 'package:simple_weather/data/providers/weather_provider.dart';

class WeatherRepository {
  final WeatherProvider provider;

  WeatherRepository({required this.provider});

  Future<Weather> getWeather(String cityId) async {
    try {
      final weather = await provider.getWeather(cityId);
      return weather;
    } catch (e) {
      print(e);
      throw Exception();
    }
  }
}
