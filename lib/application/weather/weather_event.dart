part of 'weather_bloc.dart';

@freezed
@immutable
abstract class WeatherEvent with _$WeatherEvent {
  const factory WeatherEvent.loadCity(String cityId, String cityName) =
      WeatherLoadCityEvent;
}
