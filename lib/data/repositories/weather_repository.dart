import 'package:simple_weather/data/models/forecast.dart';
import 'package:simple_weather/data/providers/weather_provider.dart';

class WeatherRepository {
  final WeatherProvider provider;

  WeatherRepository({required this.provider});

  Future<Forecast> getForecast(String cityId) async {
    try {
      final weather = await provider.getWeather(cityId);
      return weather;
    } catch (e) {
      print(e);
      throw Exception();
    }
  }
}
