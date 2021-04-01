import 'package:simple_weather/data/models/forecast.dart';
import 'package:simple_weather/data/providers/weather_provider.dart';

class WeatherRepository {
  final WeatherProvider provider;

  WeatherRepository({required this.provider});

  Future<Forecast> getForecast(String cityId, String cityName) async {
    try {
      final jsonMap = await provider.getWeather(cityId, cityName);
      final forecast = Forecast.fromJson(jsonMap, cityName: cityName);
      return forecast;
    } catch (e) {
      print(e);
      throw Exception();
    }
  }
}
