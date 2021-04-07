import 'package:dartz/dartz.dart';
import 'package:simple_weather/domain/weather/weather_failure.dart';

import 'forecast.dart';

abstract class IWeatherFacade {
  Future<Either<WeatherFailure, Forecast>> getForecast(
      String cityId, String cityName);
}
