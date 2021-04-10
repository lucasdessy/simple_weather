import 'dart:convert';

import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:html_character_entities/html_character_entities.dart';
import 'package:injectable/injectable.dart';
import 'package:simple_weather/domain/weather/forecast.dart';
import 'package:simple_weather/domain/weather/i_weather_facade.dart';
import 'package:simple_weather/domain/weather/weather_failure.dart';
import 'package:simple_weather/util/log.dart';

@LazySingleton(as: IWeatherFacade)
class WeatherFacade implements IWeatherFacade {
  final FirebaseFunctions _functions;
  late final HttpsCallable _getWeather;
  WeatherFacade({required FirebaseFunctions functions})
      : _functions = functions {
    _getWeather = _functions.httpsCallable('getWeather');
  }
  @override
  Future<Either<WeatherFailure, Forecast>> getForecast(
      String cityId, String cityName) async {
    try {
      log('getting weather...');
      final response = await _getWeather({'cityId': cityId});
      final responseMap =
          jsonDecode(HtmlCharacterEntities.decode(jsonEncode(response.data)))
              as Map<String, dynamic>;
      responseMap['cityName'] = cityName;
      final forecast = Forecast.fromJson(responseMap);
      return right(forecast);
    } catch (e) {
      log(e);
      return left(const WeatherFailure.serverError());
    }
  }
}
