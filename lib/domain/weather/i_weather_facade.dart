import 'forecast.dart';

abstract class IWeatherFacade {
  Future<Forecast> getForecast(String cityId, String cityName);
}
