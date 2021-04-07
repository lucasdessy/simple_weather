import 'package:cloud_functions/cloud_functions.dart';
import 'package:simple_weather/domain/weather/forecast.dart';
import 'package:simple_weather/domain/weather/i_weather_facade.dart';
import 'package:simple_weather/util/log.dart';

class WeatherFacade implements IWeatherFacade {
  final FirebaseFunctions _functions;
  late final HttpsCallable _getWeather;
  WeatherFacade({FirebaseFunctions? functions})
      : _functions = functions ?? FirebaseFunctions.instance {
    _getWeather = _functions.httpsCallable('getWeather');
  }
  @override
  Future<Forecast> getForecast(String cityId, String cityName) async {
    try {
      log('getting weather...');
      final response = await _getWeather({'cityId': cityId});
      final responseMap = Map<String, dynamic>.from(response.data as Map);
      return Forecast.fromJson(responseMap);
    } catch (e) {
      log('erro ao processar. $e');
      throw Exception();
    }
  }
}
