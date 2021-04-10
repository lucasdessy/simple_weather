import 'package:dartz/dartz.dart';
import 'package:simple_weather/domain/weather/search/item_suggestion.dart';
import 'package:simple_weather/domain/weather/weather_failure.dart';

import 'forecast.dart';

abstract class IWeatherFacade {
  Future<Either<WeatherFailure, Forecast>> getForecast(
      ItemSuggestion suggestion);
}
