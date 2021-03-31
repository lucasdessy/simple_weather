import 'dart:convert';

import 'package:cloud_functions/cloud_functions.dart';
import 'package:simple_weather/data/models/forecast.dart';

abstract class WeatherProvider {
  Future<Forecast> getWeather(String cityId);
}

class WeatherFirebaseProvider implements WeatherProvider {
  final FirebaseFunctions _functions;
  late final HttpsCallable _getWeather;
  WeatherFirebaseProvider({FirebaseFunctions? functions})
      : _functions = functions ?? FirebaseFunctions.instance {
    _getWeather = _functions.httpsCallable('getWeather');
  }
  @override
  Future<Forecast> getWeather(String cityId) async {
    try {
      print('getting weather...');
      final response = await _getWeather({'cityId': cityId});
      final _forecast = Forecast.fromJson(
        Map.from(response.data),
      );
      print(_forecast);
      return _forecast;
    } catch (e) {
      print('erro ao processar. $e');
      throw Exception();
    }
  }
}

class WeatherMockProvider implements WeatherProvider {
  @override
  Future<Forecast> getWeather(String cityId) async {
    await Future.delayed(Duration(seconds: 2));

    return Forecast();
  }
}
