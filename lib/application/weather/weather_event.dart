part of 'weather_bloc.dart';

@freezed
@immutable
class WeatherEvent with _$WeatherEvent {
  const factory WeatherEvent.loadCity(ItemSuggestion suggestion) =
      WeatherLoadCityEvent;
}
